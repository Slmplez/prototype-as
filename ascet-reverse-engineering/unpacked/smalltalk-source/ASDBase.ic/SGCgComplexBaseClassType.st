"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000ee8; bytecode file offset 0x8ffcfc"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
asNonQuantType
    ^self
! !

"ASDBase.ic method 0x200034e0; bytecode file offset 0x90206c"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
setOptimizations: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20003870; bytecode file offset 0x90206c"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
optimizations: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000674c; bytecode file offset 0x908be4"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
mdlKey
    | recoveredValue0 |
    recoveredValue0 := (self) mdlLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20006c38; bytecode file offset 0x908be4"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
mdlCopy
    | recoveredValue0 |
    recoveredValue0 := (self) copyImplementation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20006ce0; bytecode file offset 0x908be4"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
errLabelWithImpl
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200071a8; bytecode file offset 0x908be4"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
asModelType
    | recoveredValue0 |
    recoveredValue0 := (self) mdlLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200073e8; bytecode file offset 0x908be4"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
label
    | recoveredValue0 |
    recoveredValue0 := (self) mdlLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000770c; bytecode file offset 0x908be4"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
asDbType
    | recoveredValue0 |
    recoveredValue0 := (self) cgUniqueTypeIdentifier.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20008bb8; bytecode file offset 0x908be4"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
mdlLabel
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009284; bytecode file offset 0x908be4"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
maxXSize
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000944c; bytecode file offset 0x908be4"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
asTempVarType
    | recoveredValue0 |
    recoveredValue0 := (self) copyImplementation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009aa0; bytecode file offset 0x908be4"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
esdlDimensionLabel
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b048; bytecode file offset 0x908be4"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
mdlMaxSize
    | recoveredValue0 |
    recoveredValue0 := (self) ileMaxSize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b6fc; bytecode file offset 0x908be4"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
createUniqueBaseTypeIdentifier
    | recoveredValue0 |
    recoveredValue0 := (self) cgUniqueTypeIdentifier.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20010704; bytecode file offset 0x90cfc0"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
cgAssignmentConversion: recoveredArg1 lValue: recoveredArg2 generator: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016430; bytecode file offset 0x92209c"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
basicTemplateMatrixType
    ^'Matrix_%BASETYPE.NAME%_%MAXSIZE%'
! !

"ASDBase.ic method 0x2001c88c; bytecode file offset 0x92209c"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
basicTemplateDistrType
    ^'Distrib_%BASETYPE.NAME%_%MAXSIZE%'
! !

"ASDBase.ic method 0x2002396c; bytecode file offset 0x92209c"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
basicTemplateArrayType
    ^'Array_%BASETYPE.NAME%_%MAXSIZE%'
! !

"ASDBase.ic method 0x20028684; bytecode file offset 0x934580"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
getPhysInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlComponentClassType.
    recoveredValue1 := (recoveredValue0) getPhysInterval.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20028cd4; bytecode file offset 0x934580"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
byteSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlComponentClassType.
    recoveredValue1 := (recoveredValue0) byteSize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200297e4; bytecode file offset 0x934580"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
sixModelTypeValueRange
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlComponentClassType.
    recoveredValue1 := (recoveredValue0) sixModelTypeValueRange.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002a514; bytecode file offset 0x934580"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
ilePhysModelInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) componentType.
    recoveredValue1 := (recoveredValue0) ilePhysModelInterval.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002a864; bytecode file offset 0x934580"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
esdlTypeLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlComponentClassType.
    recoveredValue1 := (recoveredValue0) esdlTypeLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ae94; bytecode file offset 0x934580"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
isIleFloat32Type
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlComponentClassType.
    recoveredValue1 := (recoveredValue0) isIleFloat32Type.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002b064; bytecode file offset 0x934580"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
getImplType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlComponentClassType.
    recoveredValue1 := (recoveredValue0) getImplType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002b284; bytecode file offset 0x934580"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
formula
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlComponentClassType.
    recoveredValue1 := (recoveredValue0) formula.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002b514; bytecode file offset 0x934580"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
asBaseClassType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlComponentClassType.
    recoveredValue1 := (recoveredValue0) asBaseClassType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c5b4; bytecode file offset 0x934580"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
getImplInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlComponentClassType.
    recoveredValue1 := (recoveredValue0) getImplInterval.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f1e4; bytecode file offset 0x934580"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
getPhysQuantization
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlComponentClassType.
    recoveredValue1 := (recoveredValue0) getPhysQuantization.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f3a4; bytecode file offset 0x934580"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
isIleQuantFloatType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlComponentClassType.
    recoveredValue1 := (recoveredValue0) isIleQuantFloatType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030f54; bytecode file offset 0x934580"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
createDataElement
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) modelType.
    recoveredValue1 := (recoveredValue0) createDataElement.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032234; bytecode file offset 0x934580"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
mdlFormula
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlComponentClassType.
    recoveredValue1 := (recoveredValue0) formula.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200338c4; bytecode file offset 0x934580"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
sixImplTypeValueRange
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlComponentClassType.
    recoveredValue1 := (recoveredValue0) sixImplTypeValueRange.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200366e4; bytecode file offset 0x934580"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
isIleUnsignedIntegerType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlComponentClassType.
    recoveredValue1 := (recoveredValue0) isIleUnsignedIntegerType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004dec8; bytecode file offset 0x94d048"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
modelType
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004ece4; bytecode file offset 0x94d048"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
maxSize
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200500dc; bytecode file offset 0x94d048"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
modelTypeClassName
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200529c0; bytecode file offset 0x94f274"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
implementation: recoveredArg1
    uniqueTypeIdentifier := nil.
    ^self
! !

"ASDBase.ic method 0x200562c8; bytecode file offset 0x952c58"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
generateScoopIX: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) writeHeaderEnd.
    ^self
! !

"ASDBase.ic method 0x2005d7cc; bytecode file offset 0x95a080"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
isMdlARArrayType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := arrayReferencePassing.
    recoveredValue1 := (recoveredValue0) isNil.
    recoveredValue2 := (recoveredValue1) not.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005d8d4; bytecode file offset 0x95a190"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
originalImplementationIsNil
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := originalImplementationIsNil.
    recoveredValue1 := (recoveredValue0) = (true).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20066e2c; bytecode file offset 0x9646f8"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
componentType
    | recoveredValue0 |
    recoveredValue0 := componentType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067b1c; bytecode file offset 0x9646f8"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
mdlComponentClassType
    | recoveredValue0 |
    recoveredValue0 := componentType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074f34; bytecode file offset 0x9757c8"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
isMdlBaseClassType
    ^true
! !

"ASDBase.ic method 0x20075f5c; bytecode file offset 0x9757c8"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
isIleComplexBaseType
    ^true
! !

"ASDBase.ic method 0x20076bec; bytecode file offset 0x9757c8"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
isCgTypeWithBehaviour
    ^true
! !

"ASDBase.ic method 0x2007774c; bytecode file offset 0x9757c8"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
isIleBaseType
    ^true
! !

"ASDBase.ic method 0x200787f4; bytecode file offset 0x9757c8"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
isMdlTypeNeedsReference
    ^true
! !

"ASDBase.ic method 0x200799dc; bytecode file offset 0x97c330"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
isMdlDistribution
    ^false
! !

"ASDBase.ic method 0x2007b1c4; bytecode file offset 0x97c330"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
isCgAllowedEmbeddedRecordElementType
    ^false
! !

"ASDBase.ic method 0x2007bdbc; bytecode file offset 0x97c330"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
isMdlMatrix
    ^false
! !

"ASDBase.ic method 0x2007bf44; bytecode file offset 0x97c330"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
isMdlSystemConstantPermitted
    ^false
! !

"ASDBase.ic method 0x2007c0e4; bytecode file offset 0x97c330"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
isMdlCharTable
    ^false
! !

"ASDBase.ic method 0x2007c29c; bytecode file offset 0x97c330"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
isCgCopyableType
    ^false
! !

"ASDBase.ic method 0x2007ccfc; bytecode file offset 0x97c330"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
isMdlGroupCharTable
    ^false
! !

"ASDBase.ic method 0x2007d1bc; bytecode file offset 0x97c330"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
isMdlFixedCharTable
    ^false
! !

"ASDBase.ic method 0x2007d64c; bytecode file offset 0x97c330"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
isMdlOneDCharTable
    ^false
! !

"ASDBase.ic method 0x2007e084; bytecode file offset 0x97c330"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
isRBGroupCharTable
    ^false
! !

"ASDBase.ic method 0x2007e174; bytecode file offset 0x97c330"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
isCgAllowedSRInterfaceElementType
    ^false
! !

"ASDBase.ic method 0x2007f2ec; bytecode file offset 0x97c330"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
isIleFloatType
    ^false
! !

"ASDBase.ic method 0x2007f9b4; bytecode file offset 0x97c330"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
needsIntegerCode
    ^false
! !

"ASDBase.ic method 0x2007f9ec; bytecode file offset 0x97c330"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
isMdlTwoDCharTable
    ^false
! !

"ASDBase.ic method 0x20095698; bytecode file offset 0x991fb4"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) errLabelWithImpl.
    (recoveredValue0) nextPutAll: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20099d28; bytecode file offset 0x997194"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
checkDiscNoFormula: recoveredArg1 source: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) mdlComponentClassType.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) checkDiscNoFormula: (recoveredValue1) source: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009a648; bytecode file offset 0x997194"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
checkImplementationFor: recoveredArg1 logicNode: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) mdlComponentClassType.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) checkImplementationFor: (recoveredValue1) logicNode: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a1df0; bytecode file offset 0x99e6ec"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
typeAndImplHash
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) hash.
    recoveredValue2 := (self) mdlComponentClassType.
    recoveredValue3 := (recoveredValue2) hash.
    recoveredValue4 := (recoveredValue1) + (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200b369c; bytecode file offset 0x9aff60"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
copyImplementation
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) copy.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) mdlComponentClassType.
    recoveredValue3 := (recoveredValue2) copyImplementation.
    (recoveredValue1) mdlComponentClassType: (recoveredValue3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200beb78; bytecode file offset 0x9bc0b4"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
mdlComponentClassType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    componentType := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf288; bytecode file offset 0x9bc0b4"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
componentType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    componentType := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfe64; bytecode file offset 0x9bd228"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
arrayReferencePassing: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    arrayReferencePassing := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1040; bytecode file offset 0x9bdf14"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
originalImplementationIsNil: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    originalImplementationIsNil := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f0a5c; bytecode file offset 0x9ed310"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
arrayReferencePassing
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := arrayReferencePassing.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := arrayReferencePassing.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2010917c; bytecode file offset 0xa05a40"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
arCategory
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlMatrix.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := SGCgAutosarSettings.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) categoryMatrixType.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := SGCgAutosarSettings.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) categoryArrayType.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201155a8; bytecode file offset 0xa11e6c"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
cgUniqueTypeIdentifier
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := uniqueTypeIdentifier.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) createUniqueTypeIdentifier.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            uniqueTypeIdentifier := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := uniqueTypeIdentifier.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013fbc8; bytecode file offset 0xa3c498"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
mdlTypeLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) mdlComponentClassType.
    recoveredValue1 := (recoveredValue0) mdlTypeLabel.
    recoveredValue2 := (recoveredValue1) , ('[').
    recoveredValue3 := (self) mdlMaxSize.
    recoveredValue4 := (recoveredValue3) asString.
    recoveredValue5 := (recoveredValue2) , (recoveredValue4).
    recoveredValue6 := (recoveredValue5) , (']').
    ^recoveredValue6
! !

"ASDBase.ic method 0x201593a4; bytecode file offset 0xa55c80"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
ileMaxSize
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxSize.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPoint.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20235fb8; bytecode file offset 0xb3292c"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
cgMux: recoveredArg1 left: recoveredArg2 right: recoveredArg3 source: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) ileBuilder.
    recoveredValue2 := recoveredArg4.
    recoveredValue3 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredArg1.
    recoveredBlock11Value1 := recoveredArg2.
    recoveredBlock11Value2 := recoveredArg3.
    recoveredBlock11Value3 := (recoveredBlock11Value0) muxLeftExpr: (recoveredBlock11Value1) rightExpr: (recoveredBlock11Value2) type: (self).
    recoveredBlock11Value3
].
    recoveredValue4 := (recoveredValue1) useSource: (recoveredValue2) for: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2023601c; bytecode file offset 0xb3292c"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
cgMultiplex: recoveredArg1 choices: recoveredArg2 defaultExpr: recoveredArg3 source: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) ileBuilder.
    recoveredValue2 := recoveredArg4.
    recoveredValue3 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredArg1.
    recoveredBlock11Value1 := recoveredArg2.
    recoveredBlock11Value2 := recoveredArg3.
    recoveredBlock11Value3 := (recoveredBlock11Value0) multiplexOn: (recoveredBlock11Value1) defaultExpr: (recoveredBlock11Value2) type: (self).
    recoveredBlock11Value3
].
    recoveredValue4 := (recoveredValue1) useSource: (recoveredValue2) for: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2023bc50; bytecode file offset 0xb38524"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
createUniqueTypeIdentifier
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlComponentClassType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) createUniqueBaseTypeIdentifier.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) isMdlMatrix.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) basicTemplateMatrixType.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) isMdlDistribution.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) basicTemplateDistrType.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) basicTemplateArrayType.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) asComplexType: (recoveredStack1) template: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20271e04; bytecode file offset 0xb6e6e0"
!SGCgComplexBaseClassType methodsFor: 'recovered'!
asComplexType: recoveredArg1 template: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) at: ('BASETYPE.NAME') put: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := (self) class.
    recoveredValue7 := (recoveredValue6) typeBaseTypeNameKey.
    recoveredValue8 := recoveredArg1.
    (recoveredValue5) at: (recoveredValue7) put: (recoveredValue8).
    recoveredValue9 := recoveredValue1.
    recoveredValue10 := (self) ileMaxSize.
    recoveredValue11 := (recoveredValue10) asString.
    (recoveredValue9) at: ('MAXSIZE') put: (recoveredValue11).
    recoveredValue12 := recoveredArg2.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (recoveredValue12) bindWithGeneralArguments: (recoveredValue13).
    ^recoveredValue14
! !

