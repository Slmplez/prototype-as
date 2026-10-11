"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20028ed4; bytecode file offset 0x934580"
!TGInterpolationRoutineSet methodsFor: 'recovered'!
disallowDecrement
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := (recoveredValue0) optionDisallowDecrementValue.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f064; bytecode file offset 0x934580"
!TGInterpolationRoutineSet methodsFor: 'recovered'!
isDoublePrecision
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := (recoveredValue0) optionDoublePrecisionValue.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f134; bytecode file offset 0x934580"
!TGInterpolationRoutineSet methodsFor: 'recovered'!
searchResultInt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := (recoveredValue0) optionSearchResultIntValue.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f8b4; bytecode file offset 0x934580"
!TGInterpolationRoutineSet methodsFor: 'recovered'!
libraryFile
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := (recoveredValue0) optionLibraryValue.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200313a4; bytecode file offset 0x934580"
!TGInterpolationRoutineSet methodsFor: 'recovered'!
isAliasInterpolation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := (recoveredValue0) optionInterpolationAliasValue.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200346e4; bytecode file offset 0x934580"
!TGInterpolationRoutineSet methodsFor: 'recovered'!
isOptimizedMaps
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := (recoveredValue0) optionOptimizedMapsValue.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035004; bytecode file offset 0x934580"
!TGInterpolationRoutineSet methodsFor: 'recovered'!
headerFile
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := (recoveredValue0) optionHeaderValue.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200357a4; bytecode file offset 0x934580"
!TGInterpolationRoutineSet methodsFor: 'recovered'!
searchResultFloat
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := (recoveredValue0) optionSearchResultFloatValue.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200357d4; bytecode file offset 0x934580"
!TGInterpolationRoutineSet methodsFor: 'recovered'!
disallowIncrement
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := (recoveredValue0) optionDisallowIncrementValue.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035a14; bytecode file offset 0x934580"
!TGInterpolationRoutineSet methodsFor: 'recovered'!
mappingFile
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := (recoveredValue0) optionMappingValue.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036024; bytecode file offset 0x934580"
!TGInterpolationRoutineSet methodsFor: 'recovered'!
searchResultInitFloat
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := (recoveredValue0) optionSearchResultInitFloatValue.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036cf4; bytecode file offset 0x934580"
!TGInterpolationRoutineSet methodsFor: 'recovered'!
searchResultInitInt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := (recoveredValue0) optionSearchResultInitIntValue.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037d2c; bytecode file offset 0x934768"
!TGInterpolationRoutineSet methodsFor: 'recovered'!
isSideEffectFree
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := (recoveredValue0) optionSideEffectFreeValue.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2007f63c; bytecode file offset 0x97c330"
!TGInterpolationRoutineSet methodsFor: 'recovered'!
isMissingInterpolationSet
    ^false
! !

"ASDBase.ic method 0x2015c85c; bytecode file offset 0xa59148"
!TGInterpolationRoutineSet methodsFor: 'recovered'!
icon1D
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDInterpolationDefaultOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSystemDefinedInterpolationRoutineIdentifiers.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) identifier.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) declaration.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) icon1D.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015c87c; bytecode file offset 0xa59148"
!TGInterpolationRoutineSet methodsFor: 'recovered'!
icon2D
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDInterpolationDefaultOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSystemDefinedInterpolationRoutineIdentifiers.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) identifier.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) declaration.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) icon2D.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034b3f8; bytecode file offset 0xc47cf4"
!TGInterpolationRoutineSet methodsFor: 'recovered'!
pathTokens: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := (self) mappingFile.
    recoveredValue1 := (recoveredValue0) pathTokens.
    recoveredValue2 := (recoveredValue1) copy.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) getTargetBasePath.
    (recoveredValue3) at: ('P_TGROOT') put: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) getTargetSpecificPath.
    (recoveredValue6) at: ('P_TARGET') put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) getTargetIntpolIncludePath.
    (recoveredValue9) at: ('P_INTPOL_HEADER') put: (recoveredValue11).
    recoveredValue12 := recoveredValue2.
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue13) getTargetIntpolIncludePath.
    recoveredValue15 := (recoveredValue14) , ('lib').
    (recoveredValue12) at: ('P_INTPOL_LIB') put: (recoveredValue15).
    recoveredValue16 := recoveredValue2.
    recoveredValue17 := recoveredArg1.
    recoveredValue18 := (recoveredValue17) compilerTool.
    recoveredValue19 := (recoveredValue18) identifier.
    (recoveredValue16) at: ('COMPILER_TOOL') put: (recoveredValue19).
    recoveredValue20 := recoveredValue2.
    recoveredValue21 := recoveredArg1.
    recoveredValue22 := (recoveredValue21) compilerTool.
    recoveredValue23 := (recoveredValue22) getLibraryExtension.
    (recoveredValue20) at: ('LIB_POSTFIX') put: (recoveredValue23).
    ^recoveredValue2
! !

