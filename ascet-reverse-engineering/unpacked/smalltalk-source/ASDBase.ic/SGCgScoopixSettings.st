"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001b2e4; bytecode file offset 0x92209c"
!SGCgScoopixSettings methodsFor: 'recovered'!
relPathSchemas
    ^'Schemas'
! !

"ASDBase.ic method 0x2001f61c; bytecode file offset 0x92209c"
!SGCgScoopixSettings methodsFor: 'recovered'!
relPathCommon
    ^'common'
! !

"ASDBase.ic method 0x20020918; bytecode file offset 0x92209c"
!SGCgScoopixSettings methodsFor: 'recovered'!
styleSheetFilename
    ^'showSCOOP-IX.xsl'
! !

"ASDBase.ic method 0x20021b18; bytecode file offset 0x92209c"
!SGCgScoopixSettings methodsFor: 'recovered'!
schemaLocationFilename
    ^'scoop-ix-domain-asd.xsd'
! !

"ASDBase.ic method 0x200241ac; bytecode file offset 0x92209c"
!SGCgScoopixSettings methodsFor: 'recovered'!
relPathSCOOPIX
    ^'SCOOP-IX'
! !

"ASDBase.ic method 0x200252a4; bytecode file offset 0x92209c"
!SGCgScoopixSettings methodsFor: 'recovered'!
baseTypesFilename
    ^'baseTypes-asd.xml'
! !

"ASDBase.ic method 0x2002cfe4; bytecode file offset 0x934580"
!SGCgScoopixSettings methodsFor: 'recovered'!
filenameTemplateKeys
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) filenameTemplateKeys.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20045cac; bytecode file offset 0x9451f8"
!SGCgScoopixSettings methodsFor: 'recovered'!
mustPerformScoopixGeneration
    | recoveredValue0 |
    recoveredValue0 := (self) getBoolean: ('mustPerformScoopixGeneration').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005efa0; bytecode file offset 0x95c4f4"
!SGCgScoopixSettings methodsFor: 'recovered'!
modelLinkBase
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) modelLinkBaseKey.
    recoveredValue2 := (self) getString: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20083da0; bytecode file offset 0x9807dc"
!SGCgScoopixSettings methodsFor: 'recovered'!
scoopixTemplate: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) templateParameters.
    recoveredValue2 := (recoveredValue0) bindWithGeneralArguments: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20093384; bytecode file offset 0x98fed0"
!SGCgScoopixSettings methodsFor: 'recovered'!
mustPerformScoopixGeneration: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) set: ('mustPerformScoopixGeneration') boolOption: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ba008; bytecode file offset 0x9b6c88"
!SGCgScoopixSettings methodsFor: 'recovered'!
modelLinkBase: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) modelLinkBaseKey.
    recoveredValue2 := recoveredArg1.
    (self) setting: (recoveredValue1) putString: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fc88c; bytecode file offset 0x9f9154"
!SGCgScoopixSettings methodsFor: 'recovered'!
scoopixFileNameComponent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) scoopixFilenameKey.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) baseFilenameCategory: (recoveredValue1) componentInfo: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , ('.six').
    ^recoveredValue4
! !

"ASDBase.ic method 0x20129888; bytecode file offset 0xa261a4"
!SGCgScoopixSettings methodsFor: 'recovered'!
fileNames
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := fileNames.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            fileNames := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := fileNames.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20205f60; bytecode file offset 0xb0282c"
!SGCgScoopixSettings methodsFor: 'recovered'!
versionSchemaString
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) versionString.
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
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := '.'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020b228; bytecode file offset 0xb07b00"
!SGCgScoopixSettings methodsFor: 'recovered'!
templateParameters
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) settings.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 |
    recoveredBlock7Value0 := LookupTable.
    recoveredBlock7Value1 := (recoveredBlock7Value0) new.
    recoveredBlock7Value2 := recoveredBlock7Value1.
    recoveredBlock7Value3 := (self) class.
    recoveredBlock7Value4 := (recoveredBlock7Value3) rootPathKey.
    recoveredBlock7Value5 := (self) rootPath.
    (recoveredBlock7Value2) at: (recoveredBlock7Value4) put: (recoveredBlock7Value5).
    recoveredBlock7Value1
].
    recoveredValue2 := (recoveredValue0) at: ('templateParameters') ifAbsentPut: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20248824; bytecode file offset 0xb45148"
!SGCgScoopixSettings methodsFor: 'recovered'!
styleSheetFullFilename
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) settings.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 |
    recoveredBlock7Value0 := (self) rootPath.
    recoveredBlock7Value1 := (recoveredBlock7Value0) , ('\').
    recoveredBlock7Value2 := (self) relPathCommon.
    recoveredBlock7Value3 := (recoveredBlock7Value1) , (recoveredBlock7Value2).
    recoveredBlock7Value4 := (recoveredBlock7Value3) , ('\').
    recoveredBlock7Value5 := (self) styleSheetFilename.
    recoveredBlock7Value6 := (recoveredBlock7Value4) , (recoveredBlock7Value5).
    recoveredBlock7Value6
].
    recoveredValue2 := (recoveredValue0) at: ('styleSheetFullFilename') ifAbsentPut: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2024884c; bytecode file offset 0xb45148"
!SGCgScoopixSettings methodsFor: 'recovered'!
schemaLocationFullFilename
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) settings.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 |
    recoveredBlock7Value0 := (self) rootPath.
    recoveredBlock7Value1 := (recoveredBlock7Value0) , ('\').
    recoveredBlock7Value2 := (self) relPathSchemas.
    recoveredBlock7Value3 := (recoveredBlock7Value1) , (recoveredBlock7Value2).
    recoveredBlock7Value4 := (recoveredBlock7Value3) , ('\').
    recoveredBlock7Value5 := (self) schemaLocationFilename.
    recoveredBlock7Value6 := (recoveredBlock7Value4) , (recoveredBlock7Value5).
    recoveredBlock7Value6
].
    recoveredValue2 := (recoveredValue0) at: ('schemaLocationFullFilename') ifAbsentPut: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20248874; bytecode file offset 0xb45148"
!SGCgScoopixSettings methodsFor: 'recovered'!
baseTypesFullFilename
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) settings.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 |
    recoveredBlock7Value0 := (self) rootPath.
    recoveredBlock7Value1 := (recoveredBlock7Value0) , ('\').
    recoveredBlock7Value2 := (self) relPathCommon.
    recoveredBlock7Value3 := (recoveredBlock7Value1) , (recoveredBlock7Value2).
    recoveredBlock7Value4 := (recoveredBlock7Value3) , ('\').
    recoveredBlock7Value5 := (self) baseTypesFilename.
    recoveredBlock7Value6 := (recoveredBlock7Value4) , (recoveredBlock7Value5).
    recoveredBlock7Value6
].
    recoveredValue2 := (recoveredValue0) at: ('baseTypesFullFilename') ifAbsentPut: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20282de4; bytecode file offset 0xb7f6c8"
!SGCgScoopixSettings methodsFor: 'recovered'!
rootPath
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) settings.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) rootPathKey.
    recoveredValue3 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 recoveredBlock8Value7 recoveredBlock8Value8 recoveredBlock8Value9 recoveredBlock8Value10 |
    recoveredBlock8Value0 := (self) buildEnvironmentInfo.
    recoveredBlock8Value1 := (recoveredBlock8Value0) ascetPath.
    recoveredBlock8Value2 := (self) relPathFormats.
    recoveredBlock8Value3 := (recoveredBlock8Value2) asPathname.
    recoveredBlock8Value4 := (recoveredBlock8Value1) , (recoveredBlock8Value3).
    recoveredBlock8Value5 := (self) relPathSCOOPIX.
    recoveredBlock8Value6 := (recoveredBlock8Value5) asPathname.
    recoveredBlock8Value7 := (recoveredBlock8Value4) , (recoveredBlock8Value6).
    recoveredBlock8Value8 := (self) versionSchemaString.
    recoveredBlock8Value9 := (recoveredBlock8Value7) , (recoveredBlock8Value8).
    recoveredBlock8Value10 := (recoveredBlock8Value9) asPathNameBlanksAvoided.
    recoveredBlock8Value10
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsentPut: (recoveredValue3).
    ^recoveredValue4
! !

