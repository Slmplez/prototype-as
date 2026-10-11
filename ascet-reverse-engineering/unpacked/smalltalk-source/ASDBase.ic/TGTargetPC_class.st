"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006764; bytecode file offset 0x908be4"
!TGTargetPC class methodsFor: 'recovered'!
availableOSToolTypes
    | recoveredValue0 |
    recoveredValue0 := (self) defaultOSToolTypes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009a88; bytecode file offset 0x908be4"
!TGTargetPC class methodsFor: 'recovered'!
variantKey
    | recoveredValue0 |
    recoveredValue0 := (self) targetType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20013548; bytecode file offset 0x912098"
!TGTargetPC class methodsFor: 'recovered'!
targetType
    | recoveredValue0 |
    recoveredValue0 := PC.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200142a4; bytecode file offset 0x912098"
!TGTargetPC class methodsFor: 'recovered'!
targetLabel
    | recoveredValue0 |
    recoveredValue0 := PC.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20021674; bytecode file offset 0x92209c"
!TGTargetPC class methodsFor: 'recovered'!
relativeTargetPath
    ^'pc\'
! !

"ASDBase.ic method 0x20021ba8; bytecode file offset 0x92209c"
!TGTargetPC class methodsFor: 'recovered'!
addOnLabel
    ^'MD'
! !

"ASDBase.ic method 0x20022904; bytecode file offset 0x92209c"
!TGTargetPC class methodsFor: 'recovered'!
supportedOS
    ^''
! !

"ASDBase.ic method 0x20071ba4; bytecode file offset 0x96e578"
!TGTargetPC class methodsFor: 'recovered'!
preempLevels
    ^0
! !

"ASDBase.ic method 0x20078e24; bytecode file offset 0x9757c8"
!TGTargetPC class methodsFor: 'recovered'!
isPCTarget
    ^true
! !

"ASDBase.ic method 0x2007925c; bytecode file offset 0x975b38"
!TGTargetPC class methodsFor: 'recovered'!
coopLevels
    ^20
! !

"ASDBase.ic method 0x2007dcfc; bytecode file offset 0x97c330"
!TGTargetPC class methodsFor: 'recovered'!
isAbstract
    ^false
! !

"ASDBase.ic method 0x20094330; bytecode file offset 0x990cac"
!TGTargetPC class methodsFor: 'recovered'!
checkLicenseForCodeManager: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ASDFLEXnetFeatureAscetMD.
    recoveredValue2 := (self) checkLicenseForCodeManager: (recoveredValue0) featureClass: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b1e88; bytecode file offset 0x9ae7f4"
!TGTargetPC class methodsFor: 'recovered'!
supportsVariableStepSolvers
    | recoveredValue0 |
    recoveredValue0 := ('Rnz') == ('EHI_79372').
    ^true
! !

"ASDBase.ic method 0x201044c8; bytecode file offset 0xa00d94"
!TGTargetPC class methodsFor: 'recovered'!
defaultOSTools
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := TGOperatingSystemTool.
    recoveredValue2 := TGTarget.
    recoveredValue3 := (recoveredValue2) genericOsType.
    recoveredValue4 := (recoveredValue1) selectedTool: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) with: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20114850; bytecode file offset 0xa11118"
!TGTargetPC class methodsFor: 'recovered'!
networkPorts
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := TGNetworkPort.
    recoveredValue2 := (recoveredValue1) createWithName: ('Port0') id: (0).
    recoveredValue3 := (recoveredValue0) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2017eadc; bytecode file offset 0xa7b3f4"
!TGTargetPC class methodsFor: 'recovered'!
enableDebugCompiler
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLDefinedOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'PCTargetEnableDebugCompiler'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 'ETASInternal'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) getOption: (recoveredStack2) fromCategory: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [
    false
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203d0e9c; bytecode file offset 0xccd790"
!TGTargetPC class methodsFor: 'recovered'!
defaultCompilerTools
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := TGCCompilerTool.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) availableCompilerTools.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := [:block280f75e4Arg1 | 
    | block280f75e4Value0 block280f75e4Value1 block280f75e4Value2 block280f75e4Value3 |
    block280f75e4Value0 := block280f75e4Arg1.
    block280f75e4Value1 := (block280f75e4Value0) compilerToolType.
    block280f75e4Value2 := GNU_4_7_0.
    block280f75e4Value3 := (block280f75e4Value1) = (block280f75e4Value2).
    block280f75e4Value3
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := GNU_4_7_0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := BORLANDCV45.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := BORLANDCV55.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := MS_Visual_CPP_2005.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := MS_Visual_CPP_2008.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := TGCCompilerTool.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) availableCompilerTools.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := [:block280f7608Arg1 | 
    | block280f7608Value0 block280f7608Value1 block280f7608Value2 block280f7608Value3 |
    block280f7608Value0 := block280f7608Arg1.
    block280f7608Value1 := (block280f7608Value0) compilerToolType.
    block280f7608Value2 := GNU_3_2_3.
    block280f7608Value3 := (block280f7608Value1) = (block280f7608Value2).
    block280f7608Value3
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 81].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := GNU_3_2_3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) findCompilerRepresentation: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

