"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000767c; bytecode file offset 0x908be4"
!SGCgAnsiCType methodsFor: 'recovered'!
errLabel
    | recoveredValue0 |
    recoveredValue0 := (self) name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009830; bytecode file offset 0x908be4"
!SGCgAnsiCType methodsFor: 'recovered'!
label
    | recoveredValue0 |
    recoveredValue0 := (self) name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009a4c; bytecode file offset 0x908be4"
!SGCgAnsiCType methodsFor: 'recovered'!
asCType
    | recoveredValue0 |
    recoveredValue0 := (self) name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a748; bytecode file offset 0x908be4"
!SGCgAnsiCType methodsFor: 'recovered'!
errLabelWithImpl
    | recoveredValue0 |
    recoveredValue0 := (self) name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000d80c; bytecode file offset 0x90a4b8"
!SGCgAnsiCType methodsFor: 'recovered'!
convertCgTypeWith: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20021cd4; bytecode file offset 0x92209c"
!SGCgAnsiCType methodsFor: 'recovered'!
modelTypeClassName
    ^'SGANSICType'
! !

"ASDBase.ic method 0x200369c4; bytecode file offset 0x934580"
!SGCgAnsiCType methodsFor: 'recovered'!
typeAndImplHash
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) name.
    recoveredValue1 := (recoveredValue0) hash.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b5e8; bytecode file offset 0x938608"
!SGCgAnsiCType methodsFor: 'recovered'!
isCgTypeIdenticalNoImpl: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) isCgTypeIdentical: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20062dc0; bytecode file offset 0x95f8b0"
!SGCgAnsiCType methodsFor: 'recovered'!
isMdlANSICCompatible
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) name.
    recoveredValue1 := (self) mdlANSICKey.
    recoveredValue2 := (recoveredValue0) equals: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006e078; bytecode file offset 0x96a9dc"
!SGCgAnsiCType methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20076b3c; bytecode file offset 0x9757c8"
!SGCgAnsiCType methodsFor: 'recovered'!
isMdlANSIC
    ^true
! !

"ASDBase.ic method 0x2007835c; bytecode file offset 0x9757c8"
!SGCgAnsiCType methodsFor: 'recovered'!
isCgAnsiCType
    ^true
! !

"ASDBase.ic method 0x2007b1f4; bytecode file offset 0x97c330"
!SGCgAnsiCType methodsFor: 'recovered'!
isCgTypeForCommonSubexpressionElimination
    ^false
! !

"ASDBase.ic method 0x2007b80c; bytecode file offset 0x97c330"
!SGCgAnsiCType methodsFor: 'recovered'!
isIleBaseType
    ^false
! !

"ASDBase.ic method 0x200885d4; bytecode file offset 0x985628"
!SGCgAnsiCType methodsFor: 'recovered'!
getPhysType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := RBANSICType.
    recoveredValue1 := (self) name.
    recoveredValue2 := (recoveredValue0) createDefault: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20091b30; bytecode file offset 0x98e3f0"
!SGCgAnsiCType methodsFor: 'recovered'!
createWithImplFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGCgTypeFactory.
    recoveredValue1 := (self) name.
    recoveredValue2 := (recoveredValue0) createAnsiCType: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c4860; bytecode file offset 0x9c11bc"
!SGCgAnsiCType methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ccd48; bytecode file offset 0x9c96b4"
!SGCgAnsiCType methodsFor: 'recovered'!
modelType
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGANSICType.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) name.
    (recoveredValue2) name: (recoveredValue3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2010e45c; bytecode file offset 0xa0ad18"
!SGCgAnsiCType methodsFor: 'recovered'!
implementation: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getImplType.
    implType := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) getImplInterval.
    implInterval := recoveredValue3.
    uniqueTypeIdentifier := nil.
    ^self
! !

"ASDBase.ic method 0x2012033c; bytecode file offset 0xa1cc08"
!SGCgAnsiCType methodsFor: 'recovered'!
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
            recoveredStack1 := (recoveredStack1) isCgAnsiCType.
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
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20169758; bytecode file offset 0xa66018"
!SGCgAnsiCType methodsFor: 'recovered'!
buildMdlInitValue: recoveredArg1 of: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) exprANSIC: (recoveredValue1) numOfExprs: (0) mdlClass: (self).
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue2) popInitValueExpr.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (self) buildMdlInitValue: (recoveredValue3) with: (recoveredValue4) from: (recoveredValue5) originalValue: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x201a0b24; bytecode file offset 0xa9d4a8"
!SGCgAnsiCType methodsFor: 'recovered'!
asRedundantModelType
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
    'asRedundantModelType called for AnsiC Type'
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
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20262ef4; bytecode file offset 0xb5f7bc"
!SGCgAnsiCType methodsFor: 'recovered'!
isCgTypeCompatibleTo: recoveredArg1 generator: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isIleComplexBaseType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
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
            recoveredStack1 := (recoveredStack1) isCgVoidType.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
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
            recoveredStack1 := (recoveredStack1) isCgResourceType.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCgARStandardReturnType.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgApplicationErrorType.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

