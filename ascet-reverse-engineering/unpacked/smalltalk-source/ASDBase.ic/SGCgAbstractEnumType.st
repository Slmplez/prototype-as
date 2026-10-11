"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20007130; bytecode file offset 0x908be4"
!SGCgAbstractEnumType methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := (self) className.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200073ac; bytecode file offset 0x908be4"
!SGCgAbstractEnumType methodsFor: 'recovered'!
isMdlSmEnumType
    | recoveredValue0 |
    recoveredValue0 := (self) isIleSmEnumType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20008d20; bytecode file offset 0x908be4"
!SGCgAbstractEnumType methodsFor: 'recovered'!
enumerationValues
    | recoveredValue0 |
    recoveredValue0 := (self) enumerationLabels.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200093d4; bytecode file offset 0x908be4"
!SGCgAbstractEnumType methodsFor: 'recovered'!
cgUniqueTypeIdentifier
    | recoveredValue0 |
    recoveredValue0 := (self) className.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200099ec; bytecode file offset 0x908be4"
!SGCgAbstractEnumType methodsFor: 'recovered'!
enumeration
    | recoveredValue0 |
    recoveredValue0 := (self) modelType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a37c; bytecode file offset 0x908be4"
!SGCgAbstractEnumType methodsFor: 'recovered'!
copyImplementation
    | recoveredValue0 |
    recoveredValue0 := (self) copy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000ae68; bytecode file offset 0x908be4"
!SGCgAbstractEnumType methodsFor: 'recovered'!
createErrLabel
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000bc54; bytecode file offset 0x908be4"
!SGCgAbstractEnumType methodsFor: 'recovered'!
mdlKey
    | recoveredValue0 |
    recoveredValue0 := (self) classId.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000dd70; bytecode file offset 0x90ab8c"
!SGCgAbstractEnumType methodsFor: 'recovered'!
createWithImplFrom: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) copy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200106e4; bytecode file offset 0x90cfc0"
!SGCgAbstractEnumType methodsFor: 'recovered'!
cgAssignmentConversion: recoveredArg1 lValue: recoveredArg2 generator: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001889c; bytecode file offset 0x92209c"
!SGCgAbstractEnumType methodsFor: 'recovered'!
modelTypeClassName
    ^'SGEnumeration'
! !

"ASDBase.ic method 0x200252e0; bytecode file offset 0x92209c"
!SGCgAbstractEnumType methodsFor: 'recovered'!
label
    ^'enum'
! !

"ASDBase.ic method 0x200282b4; bytecode file offset 0x934580"
!SGCgAbstractEnumType methodsFor: 'recovered'!
typeAndImplHash
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) classId.
    recoveredValue1 := (recoveredValue0) hash.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002d394; bytecode file offset 0x934580"
!SGCgAbstractEnumType methodsFor: 'recovered'!
uuid
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) uuid.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002dd34; bytecode file offset 0x934580"
!SGCgAbstractEnumType methodsFor: 'recovered'!
defaultOrCreateData
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) modelType.
    recoveredValue1 := (recoveredValue0) defaultOrCreateData.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030414; bytecode file offset 0x934580"
!SGCgAbstractEnumType methodsFor: 'recovered'!
implementation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) enumeration.
    recoveredValue1 := (recoveredValue0) createDataElement.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034754; bytecode file offset 0x934580"
!SGCgAbstractEnumType methodsFor: 'recovered'!
sortedEnumerationLabels
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) modelType.
    recoveredValue1 := (recoveredValue0) values.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b054; bytecode file offset 0x938608"
!SGCgAbstractEnumType methodsFor: 'recovered'!
isCgTypeIdenticalNoImpl: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) isCgTypeIdentical: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003eff8; bytecode file offset 0x93bf94"
!SGCgAbstractEnumType methodsFor: 'recovered'!
getPhysType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBStringType.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004fee4; bytecode file offset 0x94d048"
!SGCgAbstractEnumType methodsFor: 'recovered'!
expandEnumDefines
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004ff2c; bytecode file offset 0x94d048"
!SGCgAbstractEnumType methodsFor: 'recovered'!
definesForEnums
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20051240; bytecode file offset 0x94f0e0"
!SGCgAbstractEnumType methodsFor: 'recovered'!
defaultPhysicalValueForArrayCompletion
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) enumerationMap.
    recoveredValue1 := (recoveredValue0) first.
    recoveredValue2 := (recoveredValue1) enumeratorName.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20051b64; bytecode file offset 0x94f0e0"
!SGCgAbstractEnumType methodsFor: 'recovered'!
maxEnumerationValue
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) enumerationMap.
    recoveredValue1 := (recoveredValue0) last.
    recoveredValue2 := (recoveredValue1) enumeratorCode.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200625b4; bytecode file offset 0x95f8b0"
!SGCgAbstractEnumType methodsFor: 'recovered'!
isIleAUTOSARReturnType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) className.
    recoveredValue1 := (self) autosarStandardReturnTypeLabel.
    recoveredValue2 := (recoveredValue0) equals: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006dc50; bytecode file offset 0x96a9dc"
!SGCgAbstractEnumType methodsFor: 'recovered'!
className
    | recoveredValue0 |
    recoveredValue0 := className.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e474; bytecode file offset 0x96af48"
!SGCgAbstractEnumType methodsFor: 'recovered'!
classId
    | recoveredValue0 |
    recoveredValue0 := classId.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f7b8; bytecode file offset 0x96c1f4"
!SGCgAbstractEnumType methodsFor: 'recovered'!
enumerationMap
    | recoveredValue0 |
    recoveredValue0 := enumerationMap.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073ca8; bytecode file offset 0x970b34"
!SGCgAbstractEnumType methodsFor: 'recovered'!
implId
    ^nil
! !

"ASDBase.ic method 0x2007670c; bytecode file offset 0x9757c8"
!SGCgAbstractEnumType methodsFor: 'recovered'!
isCgAbstractEnumType
    ^true
! !

"ASDBase.ic method 0x20076e0c; bytecode file offset 0x9757c8"
!SGCgAbstractEnumType methodsFor: 'recovered'!
isCgTypeWithBehaviour
    ^true
! !

"ASDBase.ic method 0x200793f4; bytecode file offset 0x97c330"
!SGCgAbstractEnumType methodsFor: 'recovered'!
isIleComplexClassType
    ^false
! !

"ASDBase.ic method 0x2007954c; bytecode file offset 0x97c330"
!SGCgAbstractEnumType methodsFor: 'recovered'!
hasCgConsecutiveValues
    ^false
! !

"ASDBase.ic method 0x2007ae6c; bytecode file offset 0x97c330"
!SGCgAbstractEnumType methodsFor: 'recovered'!
isCgZeroNotIncluded
    ^false
! !

"ASDBase.ic method 0x2007b684; bytecode file offset 0x97c330"
!SGCgAbstractEnumType methodsFor: 'recovered'!
isMdlComplexClassNoEnumType
    ^false
! !

"ASDBase.ic method 0x2007baec; bytecode file offset 0x97c330"
!SGCgAbstractEnumType methodsFor: 'recovered'!
needsIntegerCode
    ^false
! !

"ASDBase.ic method 0x2007bd7c; bytecode file offset 0x97c330"
!SGCgAbstractEnumType methodsFor: 'recovered'!
expandAREnumDefines
    ^false
! !

"ASDBase.ic method 0x2007be64; bytecode file offset 0x97c330"
!SGCgAbstractEnumType methodsFor: 'recovered'!
isIleFloatType
    ^false
! !

"ASDBase.ic method 0x20084594; bytecode file offset 0x981ca4"
!SGCgAbstractEnumType methodsFor: 'recovered'!
enumeration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) modelType: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008508c; bytecode file offset 0x981ca4"
!SGCgAbstractEnumType methodsFor: 'recovered'!
optimizations: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributes: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20099688; bytecode file offset 0x995f88"
!SGCgAbstractEnumType methodsFor: 'recovered'!
cgMax: recoveredArg1 and: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) max: (recoveredValue1) type: (self).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200996c4; bytecode file offset 0x995f88"
!SGCgAbstractEnumType methodsFor: 'recovered'!
cgMin: recoveredArg1 and: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) min: (recoveredValue1) type: (self).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a8bd4; bytecode file offset 0x9a5488"
!SGCgAbstractEnumType methodsFor: 'recovered'!
className: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    className := recoveredValue0.
    errLabel := nil.
    ^self
! !

"ASDBase.ic method 0x200c49fc; bytecode file offset 0x9c16b0"
!SGCgAbstractEnumType methodsFor: 'recovered'!
classId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    classId := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5834; bytecode file offset 0x9c22c8"
!SGCgAbstractEnumType methodsFor: 'recovered'!
attributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    attributes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c9f30; bytecode file offset 0x9c67e8"
!SGCgAbstractEnumType methodsFor: 'recovered'!
buildMdlInitValue: recoveredArg1 of: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) buildMdlLiteralInitValue: (recoveredValue0) with: (recoveredValue1) from: (recoveredValue2) originalValue: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200e0a04; bytecode file offset 0x9dd2e8"
!SGCgAbstractEnumType methodsFor: 'recovered'!
modelType
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGEnumeration.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) enumerationMap.
    recoveredValue4 := (recoveredValue3) copy.
    (recoveredValue2) enumerationMap: (recoveredValue4).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200f738c; bytecode file offset 0x9f4e38"
!SGCgAbstractEnumType methodsFor: 'recovered'!
enumerationCodes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) enumerationMap.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c4350Arg1 | 
    | block280c4350Value0 block280c4350Value1 |
    block280c4350Value0 := block280c4350Arg1.
    block280c4350Value1 := (block280c4350Value0) enumeratorCode.
    block280c4350Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f74dc; bytecode file offset 0x9f4e38"
!SGCgAbstractEnumType methodsFor: 'recovered'!
enumerationLabels
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) enumerationMap.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c4548Arg1 | 
    | block280c4548Value0 block280c4548Value1 |
    block280c4548Value0 := block280c4548Arg1.
    block280c4548Value1 := (block280c4548Value0) enumeratorName.
    block280c4548Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200fcb40; bytecode file offset 0x9f9494"
!SGCgAbstractEnumType methodsFor: 'recovered'!
generateScoopIX: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) attribute: ('type') with: ('enumeration').
    (recoveredValue0) writeHeaderEnd.
    ^self
! !

"ASDBase.ic method 0x200fe340; bytecode file offset 0x9fac64"
!SGCgAbstractEnumType methodsFor: 'recovered'!
modelType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) enumerationMap.
    (self) enumerationMap: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) createDataElement.
    (self) implementation: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20100dc8; bytecode file offset 0x9fd6b4"
!SGCgAbstractEnumType methodsFor: 'recovered'!
isCgTypeCompatibleNoImpl: recoveredArg1 generator: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isCgAnsiCType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgTypeIdentical: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010c558; bytecode file offset 0xa08e20"
!SGCgAbstractEnumType methodsFor: 'recovered'!
asMdlDiscType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGCgTypeFactory.
    recoveredValue1 := (self) getImplType.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := SGCgAnyPhysicalUnit.
    recoveredValue4 := (recoveredValue3) create.
    recoveredValue5 := (recoveredValue0) createLimitedDiscreteType: (recoveredValue1) interval: (recoveredValue2) physicalUnit: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201166bc; bytecode file offset 0xa12f80"
!SGCgAbstractEnumType methodsFor: 'recovered'!
errLabel
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := errLabel.
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
            recoveredStack1 := (recoveredStack1) createErrLabel.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            errLabel := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := errLabel.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20120370; bytecode file offset 0xa1cc30"
!SGCgAbstractEnumType methodsFor: 'recovered'!
isCgTypeIdentical: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isCgAbstractEnumType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlKey.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlKey.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20162480; bytecode file offset 0xa5ed40"
!SGCgAbstractEnumType methodsFor: 'recovered'!
initialize
    super initialize.
    className := ''.
    classId := ''.
    errLabel := nil.
    ^self
! !

"ASDBase.ic method 0x2018e1b4; bytecode file offset 0xa8aa74"
!SGCgAbstractEnumType methodsFor: 'recovered'!
attributes
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := SGCgComponentAttributes.
    recoveredBlock6Value1 := (recoveredBlock6Value0) create.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    attributes := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := attributes.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201af19c; bytecode file offset 0xaaba60"
!SGCgAbstractEnumType methodsFor: 'recovered'!
ileName
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
    'An enumeration does not an IleName'
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
            recoveredStack0 := ileName.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201af1d0; bytecode file offset 0xaaba94"
!SGCgAbstractEnumType methodsFor: 'recovered'!
namespace
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
    'An enumeration does not have a namespace'
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
            recoveredStack0 := namespace.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d8b58; bytecode file offset 0xad541c"
!SGCgAbstractEnumType methodsFor: 'recovered'!
namespace: recoveredArg1
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
    'An enumeration does not have a namespace'
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
            namespace := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20203d9c; bytecode file offset 0xb00660"
!SGCgAbstractEnumType methodsFor: 'recovered'!
enumerationLabelForCode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) enumerationMap.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) enumeratorCode.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg1.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) = (recoveredBlock5Stack3).
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 22] ifFalse: [recoveredBlock5PC := 26].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) enumeratorName.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x202051ec; bytecode file offset 0xb01ab4"
!SGCgAbstractEnumType methodsFor: 'recovered'!
cgConversion: recoveredArg1 chooseInterval: recoveredArg2 isTypeOfLeftHandSide: recoveredArg3 lValue: recoveredArg4 generator: recoveredArg5
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) type.
    recoveredBlock4Value2 := (self) isCgTypeIdentical: (recoveredBlock4Value1).
    recoveredBlock4Value2
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    'Only new Boolean types can be converted to Boolean'
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020f8f8; bytecode file offset 0xb0c1bc"
!SGCgAbstractEnumType methodsFor: 'recovered'!
enumerationLabelAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) enumerationMap.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) enumeratorCode.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) enumeratorName.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2021e84c; bytecode file offset 0xb1b158"
!SGCgAbstractEnumType methodsFor: 'recovered'!
cgCompare: recoveredArg1 and: recoveredArg2 operator: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) ileBuilder.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue2) source.
    recoveredValue4 := [
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := recoveredArg3.
    recoveredBlock12Value1 := recoveredArg1.
    recoveredBlock12Value2 := recoveredArg2.
    recoveredBlock12Value3 := (recoveredBlock12Value0) createIleOperandLeftExpr: (recoveredBlock12Value1) rightExpr: (recoveredBlock12Value2).
    recoveredBlock12Value3
].
    recoveredValue5 := (recoveredValue1) useSource: (recoveredValue3) for: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2021ea0c; bytecode file offset 0xb1b2f4"
!SGCgAbstractEnumType methodsFor: 'recovered'!
cgBetween: recoveredArg1 left: recoveredArg2 right: recoveredArg3 source: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) ileBuilder.
    recoveredValue2 := recoveredArg4.
    recoveredValue3 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredArg1.
    recoveredBlock11Value1 := recoveredArg2.
    recoveredBlock11Value2 := recoveredArg3.
    recoveredBlock11Value3 := (recoveredBlock11Value0) betweenLeftExpr: (recoveredBlock11Value1) rightExpr: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    recoveredValue4 := (recoveredValue1) useSource: (recoveredValue2) for: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20235fcc; bytecode file offset 0xb3292c"
!SGCgAbstractEnumType methodsFor: 'recovered'!
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

"ASDBase.ic method 0x20236030; bytecode file offset 0xb3292c"
!SGCgAbstractEnumType methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2027da14; bytecode file offset 0xb7a2ec"
!SGCgAbstractEnumType methodsFor: 'recovered'!
buildMdlLiteralInitValue: recoveredArg1 with: recoveredArg2 from: recoveredArg3 originalValue: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := SGMdEnumValue.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) source.
    (recoveredValue2) source: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := (self) lookupValueByName: (recoveredValue6) showErrorOn: (recoveredValue7).
    (recoveredValue5) value: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    (recoveredValue9) mdlClass: (self).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := recoveredArg1.
    (recoveredValue10) label: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := recoveredArg2.
    recoveredValue14 := recoveredArg3.
    recoveredValue15 := recoveredArg4.
    recoveredValue16 := (self) buildMdlInitValue: (recoveredValue12) with: (recoveredValue13) from: (recoveredValue14) originalValue: (recoveredValue15).
    ^recoveredValue16
! !

"ASDBase.ic method 0x202a9ef0; bytecode file offset 0xba67bc"
!SGCgAbstractEnumType methodsFor: 'recovered'!
convertDataValue: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) enumerationValues.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInteger.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) enumerationValues.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) enumerationValues.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202e4054; bytecode file offset 0xbe0924"
!SGCgAbstractEnumType methodsFor: 'recovered'!
lookupValueByName: recoveredArg1 showErrorOn: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) enumerationMap.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) enumeratorName.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) equals: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 |
    recoveredBlock19Value0 := recoveredArg2.
    recoveredBlock19Value1 := recoveredArg2.
    recoveredBlock19Value2 := (recoveredBlock19Value1) errLabel.
    recoveredBlock19Value3 := recoveredArg1.
    recoveredBlock19Value4 := (self) errLabel.
    (recoveredBlock19Value0) mdlSemErrNo: (45) with: (recoveredBlock19Value2) with: (recoveredBlock19Value3) with: (recoveredBlock19Value4).
    ^0
].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) enumeratorCode.
    ^recoveredValue4
! !

"ASDBase.ic method 0x203e7304; bytecode file offset 0xce3c10"
!SGCgAbstractEnumType methodsFor: 'recovered'!
enumerationMap: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBInterval.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) enumeratorCode.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) last.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := (recoveredStack3) enumeratorCode.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) left: (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := RBFormulaString.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := [:block280f8a48Arg1 | 
    | block280f8a48Value0 block280f8a48Value1 |
    block280f8a48Value0 := block280f8a48Arg1.
    block280f8a48Value1 := (block280f8a48Value0) enumeratorName.
    block280f8a48Value1
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) collect: (recoveredStack4).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) setPhysTab: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := [:block280f8a6cArg1 | 
    | block280f8a6cValue0 block280f8a6cValue1 |
    block280f8a6cValue0 := block280f8a6cArg1.
    block280f8a6cValue1 := (block280f8a6cValue0) enumeratorCode.
    block280f8a6cValue1
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) collect: (recoveredStack4).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2) setHexTab: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            enumerationMap := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) integerType.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) setImplType: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) setImplInterval: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) formula: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) setPhysInterval: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) setPhysQuantization: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := SGExtraImplInfo.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) extraImplInfo: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            uniqueTypeIdentifier := recoveredStack0.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205ed4e4; bytecode file offset 0xee9e40"
!SGCgAbstractEnumType methodsFor: 'recovered'!
checkForSpecialCall: recoveredArg1 receiver: recoveredArg2 args: recoveredArg3 mdBuilder: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkForSpecialCallRteMacro: (recoveredStack1) receiver: (recoveredStack2) args: (recoveredStack3) mdBuilder: (recoveredStack4).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkForSpecialCallVerifyOperator: (recoveredStack1) receiver: (recoveredStack2) args: (recoveredStack3) mdBuilder: (recoveredStack4).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlAUTOSARStandardReturnType.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 133] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := super checkForSpecialCall: (recoveredStack1) receiver: (recoveredStack2) args: (recoveredStack3) mdBuilder: (recoveredStack4).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) convertToNumericalMethodName.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 133].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlModeGroupType.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 133] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlARApplicationErrorType.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 133] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) pushStack: (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) popConvertEnumToNumExpr: (recoveredStack2).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) pushStack: (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := 'limit'.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 228].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 158] ifFalse: [recoveredPC := 228].
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := [:block2811b4b0Arg1 | 
    | block2811b4b0Value0 block2811b4b0Value1 |
    block2811b4b0Value0 := block2811b4b0Arg1.
    block2811b4b0Value1 := (block2811b4b0Value0) isMdlConstantValue.
    block2811b4b0Value1
].
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSatisfy: (recoveredStack1).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 228].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := RBInterval.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) left: (recoveredStack1) right: (recoveredStack2).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := (recoveredStack0) representableInDoubleBitSize.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 200] ifFalse: [recoveredPC := 228].
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := (recoveredStack0) convertEnumToNumExpr.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkForSpecialCall: (recoveredStack1) receiver: (recoveredStack2) args: (recoveredStack3) mdBuilder: (recoveredStack4).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := RBInteger.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := (recoveredStack0) allImplTypeClasses.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := [:recoveredBlock238Arg1 | 
    | recoveredBlock238Stack0 recoveredBlock238Stack1 recoveredBlock238Stack2 recoveredBlock238Stack3 recoveredBlock238Stack4 recoveredBlock238PC recoveredBlock238Step recoveredBlock238Done recoveredBlock238Result |
    recoveredBlock238Stack0 := self.
    recoveredBlock238PC := 244.
    recoveredBlock238Done := false.
    [recoveredBlock238Done not] whileTrue: [
        recoveredBlock238Step := recoveredBlock238PC.
        recoveredBlock238Step = 244 ifTrue: [
            recoveredBlock238Stack1 := 'wrapAround'.
            recoveredBlock238PC := 246.
        ].
        recoveredBlock238Step = 246 ifTrue: [
            recoveredBlock238Stack2 := recoveredBlock238Arg1.
            recoveredBlock238PC := 247.
        ].
        recoveredBlock238Step = 247 ifTrue: [
            recoveredBlock238Stack2 := (recoveredBlock238Stack2) getInterval.
            recoveredBlock238PC := 249.
        ].
        recoveredBlock238Step = 249 ifTrue: [
            recoveredBlock238Stack2 := (recoveredBlock238Stack2) left.
            recoveredBlock238PC := 251.
        ].
        recoveredBlock238Step = 251 ifTrue: [
            recoveredBlock238Stack3 := 0.
            recoveredBlock238PC := 253.
        ].
        recoveredBlock238Step = 253 ifTrue: [
            recoveredBlock238Stack2 := (recoveredBlock238Stack2) < (recoveredBlock238Stack3).
            recoveredBlock238PC := 254.
        ].
        recoveredBlock238Step = 254 ifTrue: [
            (recoveredBlock238Stack2) ifTrue: [recoveredBlock238PC := 258] ifFalse: [recoveredBlock238PC := 264].
        ].
        recoveredBlock238Step = 258 ifTrue: [
            recoveredBlock238Stack2 := 'Sint'.
            recoveredBlock238PC := 260.
        ].
        recoveredBlock238Step = 260 ifTrue: [
            recoveredBlock238PC := 266.
        ].
        recoveredBlock238Step = 264 ifTrue: [
            recoveredBlock238Stack2 := 'Uint'.
            recoveredBlock238PC := 266.
        ].
        recoveredBlock238Step = 266 ifTrue: [
            recoveredBlock238Stack1 := (recoveredBlock238Stack1) , (recoveredBlock238Stack2).
            recoveredBlock238PC := 268.
        ].
        recoveredBlock238Step = 268 ifTrue: [
            recoveredBlock238Stack2 := recoveredBlock238Arg1.
            recoveredBlock238PC := 269.
        ].
        recoveredBlock238Step = 269 ifTrue: [
            recoveredBlock238Stack2 := (recoveredBlock238Stack2) typeSize.
            recoveredBlock238PC := 271.
        ].
        recoveredBlock238Step = 271 ifTrue: [
            recoveredBlock238Stack3 := 8.
            recoveredBlock238PC := 273.
        ].
        recoveredBlock238Step = 273 ifTrue: [
            recoveredBlock238Stack2 := (recoveredBlock238Stack2) * (recoveredBlock238Stack3).
            recoveredBlock238PC := 274.
        ].
        recoveredBlock238Step = 274 ifTrue: [
            recoveredBlock238Stack2 := (recoveredBlock238Stack2) asString.
            recoveredBlock238PC := 276.
        ].
        recoveredBlock238Step = 276 ifTrue: [
            recoveredBlock238Stack1 := (recoveredBlock238Stack1) , (recoveredBlock238Stack2).
            recoveredBlock238PC := 278.
        ].
        recoveredBlock238Step = 278 ifTrue: [
            recoveredBlock238Stack2 := recoveredArg1.
            recoveredBlock238PC := 281.
        ].
        recoveredBlock238Step = 281 ifTrue: [
            recoveredBlock238Stack2 := (recoveredBlock238Stack2) label.
            recoveredBlock238PC := 283.
        ].
        recoveredBlock238Step = 283 ifTrue: [
            recoveredBlock238Stack1 := (recoveredBlock238Stack1) equals: (recoveredBlock238Stack2).
            recoveredBlock238PC := 285.
        ].
        recoveredBlock238Step = 285 ifTrue: [
            recoveredBlock238Result := recoveredBlock238Stack1.
            recoveredBlock238Done := true.
        ].
    ].
    recoveredBlock238Result
].
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 378] ifFalse: [recoveredPC := 298].
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 350] ifFalse: [recoveredPC := 310].
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 322] ifFalse: [recoveredPC := 378].
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack1 := [:block2811b4d4Arg1 | 
    | block2811b4d4Stack0 block2811b4d4Stack1 block2811b4d4Stack2 block2811b4d4Stack3 block2811b4d4PC block2811b4d4Step block2811b4d4Done block2811b4d4Result |
    block2811b4d4Stack0 := self.
    block2811b4d4PC := 4.
    block2811b4d4Done := false.
    [block2811b4d4Done not] whileTrue: [
        block2811b4d4Step := block2811b4d4PC.
        block2811b4d4Step = 4 ifTrue: [
            block2811b4d4Stack1 := false.
            block2811b4d4PC := 5.
        ].
        block2811b4d4Step = 5 ifTrue: [
            block2811b4d4Stack2 := block2811b4d4Arg1.
            block2811b4d4PC := 6.
        ].
        block2811b4d4Step = 6 ifTrue: [
            block2811b4d4Stack2 := (block2811b4d4Stack2) isMdlConstantValue.
            block2811b4d4PC := 8.
        ].
        block2811b4d4Step = 8 ifTrue: [
            (block2811b4d4Stack2) ifTrue: [block2811b4d4PC := 12] ifFalse: [block2811b4d4PC := 18].
        ].
        block2811b4d4Step = 12 ifTrue: [
            block2811b4d4PC := 13.
        ].
        block2811b4d4Step = 13 ifTrue: [
            block2811b4d4Stack1 := block2811b4d4Arg1.
            block2811b4d4PC := 14.
        ].
        block2811b4d4Step = 14 ifTrue: [
            block2811b4d4Stack1 := (block2811b4d4Stack1) evaluateMdlConstantValue.
            block2811b4d4PC := 16.
        ].
        block2811b4d4Step = 16 ifTrue: [
            block2811b4d4Stack1 := (block2811b4d4Stack1) isInteger.
            block2811b4d4PC := 18.
        ].
        block2811b4d4Step = 18 ifTrue: [
            block2811b4d4Result := block2811b4d4Stack1.
            block2811b4d4Done := true.
        ].
    ].
    block2811b4d4Result
].
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSatisfy: (recoveredStack1).
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 350] ifFalse: [recoveredPC := 378].
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack0 := (recoveredStack0) convertEnumToNumExpr.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkForSpecialCall: (recoveredStack1) receiver: (recoveredStack2) args: (recoveredStack3) mdBuilder: (recoveredStack4).
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack1 := 23.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack3 := 'enumerations'.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            (recoveredStack0) pushStack: (recoveredStack1).
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

