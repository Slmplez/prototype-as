"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001398c; bytecode file offset 0x912098"
!SGOsConfigOptions methodsFor: 'recovered'!
operatingSystemClass
    | recoveredValue0 |
    recoveredValue0 := TGOperatingSystemTool.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20013f14; bytecode file offset 0x912098"
!SGOsConfigOptions methodsFor: 'recovered'!
platformClass
    | recoveredValue0 |
    recoveredValue0 := TGPlatform.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016478; bytecode file offset 0x92209c"
!SGOsConfigOptions methodsFor: 'recovered'!
eccoOptionsFileKey
    ^'ECCO_OPTIONS_FILE'
! !

"ASDBase.ic method 0x20019238; bytecode file offset 0x92209c"
!SGOsConfigOptions methodsFor: 'recovered'!
groupLabel
    ^'OS Settings'
! !

"ASDBase.ic method 0x2001925c; bytecode file offset 0x92209c"
!SGOsConfigOptions methodsFor: 'recovered'!
installationPathKey
    ^'P_OS_ROOT'
! !

"ASDBase.ic method 0x20019bbc; bytecode file offset 0x92209c"
!SGOsConfigOptions methodsFor: 'recovered'!
oilFileKey
    ^'PROJ_OIL_FILE'
! !

"ASDBase.ic method 0x2001b680; bytecode file offset 0x92209c"
!SGOsConfigOptions methodsFor: 'recovered'!
sectionName
    ^'OperatingSystem'
! !

"ASDBase.ic method 0x2001bba8; bytecode file offset 0x92209c"
!SGOsConfigOptions methodsFor: 'recovered'!
operatingSystemKey
    ^'osType'
! !

"ASDBase.ic method 0x2001bdc4; bytecode file offset 0x92209c"
!SGOsConfigOptions methodsFor: 'recovered'!
includePathKey
    ^'P_OS_INCLUDE'
! !

"ASDBase.ic method 0x2001dffc; bytecode file offset 0x92209c"
!SGOsConfigOptions methodsFor: 'recovered'!
arXmlConfigurationFileKey
    ^'AR_XML_CONFIG_FILE'
! !

"ASDBase.ic method 0x2001e08c; bytecode file offset 0x92209c"
!SGOsConfigOptions methodsFor: 'recovered'!
configToolOptionsKey
    ^'OS_CONFIG_TOOL_CMD'
! !

"ASDBase.ic method 0x2001f73c; bytecode file offset 0x92209c"
!SGOsConfigOptions methodsFor: 'recovered'!
memSectionFileOptionLabel
    ^'Memory Sections Configuration File'
! !

"ASDBase.ic method 0x20022340; bytecode file offset 0x92209c"
!SGOsConfigOptions methodsFor: 'recovered'!
osTemplateFileKey
    ^'OS_TEMPLATE'
! !

"ASDBase.ic method 0x20022dd8; bytecode file offset 0x92209c"
!SGOsConfigOptions methodsFor: 'recovered'!
librariesKey
    ^'OS_LIBS'
! !

"ASDBase.ic method 0x20023498; bytecode file offset 0x92209c"
!SGOsConfigOptions methodsFor: 'recovered'!
enableOSConfigKey
    ^'DO_OS_CONFIG'
! !

"ASDBase.ic method 0x20024710; bytecode file offset 0x92209c"
!SGOsConfigOptions methodsFor: 'recovered'!
interpolationMappingKey
    ^'PROJ_INTERPOLATION_MAPPING'
! !

"ASDBase.ic method 0x200248c0; bytecode file offset 0x92209c"
!SGOsConfigOptions methodsFor: 'recovered'!
libraryPathKey
    ^'P_OS_LIBRARY'
! !

"ASDBase.ic method 0x200248d8; bytecode file offset 0x92209c"
!SGOsConfigOptions methodsFor: 'recovered'!
memorySectionsFileKey
    ^'MEMORY_SECTIONS_FILE'
! !

"ASDBase.ic method 0x2004927c; bytecode file offset 0x947128"
!SGOsConfigOptions methodsFor: 'recovered'!
osTemplateFile
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) osTemplateFileKey.
    recoveredValue1 := (self) getStringOption: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004934c; bytecode file offset 0x947128"
!SGOsConfigOptions methodsFor: 'recovered'!
configToolOptions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) configToolOptionsKey.
    recoveredValue1 := (self) getStringOption: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200496ac; bytecode file offset 0x947128"
!SGOsConfigOptions methodsFor: 'recovered'!
oilFile
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) oilFileKey.
    recoveredValue1 := (self) getStringOption: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200496cc; bytecode file offset 0x947128"
!SGOsConfigOptions methodsFor: 'recovered'!
memorySectionsFile
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) memorySectionsFileKey.
    recoveredValue1 := (self) getStringOption: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200499fc; bytecode file offset 0x947128"
!SGOsConfigOptions methodsFor: 'recovered'!
operatingSystem
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) operatingSystemKey.
    recoveredValue1 := (self) getStringOption: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20049c8c; bytecode file offset 0x947128"
!SGOsConfigOptions methodsFor: 'recovered'!
arXmlConfigurationFile
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) arXmlConfigurationFileKey.
    recoveredValue1 := (self) getStringOption: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a16c; bytecode file offset 0x947128"
!SGOsConfigOptions methodsFor: 'recovered'!
enableOSConfig
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) enableOSConfigKey.
    recoveredValue1 := (self) getBoolOption: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a21c; bytecode file offset 0x947128"
!SGOsConfigOptions methodsFor: 'recovered'!
libraryPath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) libraryPathKey.
    recoveredValue1 := (self) getStringOption: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a5dc; bytecode file offset 0x947128"
!SGOsConfigOptions methodsFor: 'recovered'!
includePath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) includePathKey.
    recoveredValue1 := (self) getStringOption: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a82c; bytecode file offset 0x947128"
!SGOsConfigOptions methodsFor: 'recovered'!
libraries
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) librariesKey.
    recoveredValue1 := (self) getStringOption: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20052474; bytecode file offset 0x94f0e0"
!SGOsConfigOptions methodsFor: 'recovered'!
currentTargetInProject
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) project.
    recoveredValue1 := (recoveredValue0) specification.
    recoveredValue2 := (recoveredValue1) target.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20062e24; bytecode file offset 0x95f8b0"
!SGOsConfigOptions methodsFor: 'recovered'!
osTool
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) operatingSystemClass.
    recoveredValue1 := (self) operatingSystem.
    recoveredValue2 := (recoveredValue0) selectedTool: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008891c; bytecode file offset 0x985628"
!SGOsConfigOptions methodsFor: 'recovered'!
boolOptionKeys
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) enableOSConfigKey.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200894bc; bytecode file offset 0x985ef8"
!SGOsConfigOptions methodsFor: 'recovered'!
initializeOptions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    options := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2008d314; bytecode file offset 0x989db0"
!SGOsConfigOptions methodsFor: 'recovered'!
loadSystemDefaults
    | recoveredValue0 |
    recoveredValue0 := (self) currentTargetInProject.
    (self) loadSystemDefaults: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20093b20; bytecode file offset 0x9904ac"
!SGOsConfigOptions methodsFor: 'recovered'!
osTemplateFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) osTemplateFileKey.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) setOption: (recoveredValue0) to: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009a308; bytecode file offset 0x997194"
!SGOsConfigOptions methodsFor: 'recovered'!
getStringOption: recoveredArg1 default: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) newOptions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a52ac; bytecode file offset 0x9a1dc8"
!SGOsConfigOptions methodsFor: 'recovered'!
includePath: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) includePathKey.
    recoveredValue1 := recoveredArg1.
    (self) setOption: (recoveredValue0) to: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a52ec; bytecode file offset 0x9a1dc8"
!SGOsConfigOptions methodsFor: 'recovered'!
memorySectionsFile: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) memorySectionsFileKey.
    recoveredValue1 := recoveredArg1.
    (self) setOption: (recoveredValue0) to: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a531c; bytecode file offset 0x9a1dc8"
!SGOsConfigOptions methodsFor: 'recovered'!
eccoOptionsFile: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) eccoOptionsFileKey.
    recoveredValue1 := recoveredArg1.
    (self) setOption: (recoveredValue0) to: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a532c; bytecode file offset 0x9a1dc8"
!SGOsConfigOptions methodsFor: 'recovered'!
interpolationMapping: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) interpolationMappingKey.
    recoveredValue1 := recoveredArg1.
    (self) setOption: (recoveredValue0) to: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a535c; bytecode file offset 0x9a1dc8"
!SGOsConfigOptions methodsFor: 'recovered'!
arXmlConfigurationFile: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) arXmlConfigurationFileKey.
    recoveredValue1 := recoveredArg1.
    (self) setOption: (recoveredValue0) to: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a53ac; bytecode file offset 0x9a1dc8"
!SGOsConfigOptions methodsFor: 'recovered'!
libraryPath: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) libraryPathKey.
    recoveredValue1 := recoveredArg1.
    (self) setOption: (recoveredValue0) to: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a53ec; bytecode file offset 0x9a1dc8"
!SGOsConfigOptions methodsFor: 'recovered'!
operatingSystem: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) operatingSystemKey.
    recoveredValue1 := recoveredArg1.
    (self) setOption: (recoveredValue0) to: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a541c; bytecode file offset 0x9a1dc8"
!SGOsConfigOptions methodsFor: 'recovered'!
libraries: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) librariesKey.
    recoveredValue1 := recoveredArg1.
    (self) setOption: (recoveredValue0) to: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a542c; bytecode file offset 0x9a1dc8"
!SGOsConfigOptions methodsFor: 'recovered'!
enableOSConfig: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) enableOSConfigKey.
    recoveredValue1 := recoveredArg1.
    (self) setOption: (recoveredValue0) to: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a544c; bytecode file offset 0x9a1dc8"
!SGOsConfigOptions methodsFor: 'recovered'!
configToolOptions: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) configToolOptionsKey.
    recoveredValue1 := recoveredArg1.
    (self) setOption: (recoveredValue0) to: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a54cc; bytecode file offset 0x9a1dc8"
!SGOsConfigOptions methodsFor: 'recovered'!
oilFile: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) oilFileKey.
    recoveredValue1 := recoveredArg1.
    (self) setOption: (recoveredValue0) to: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ae548; bytecode file offset 0x9ab034"
!SGOsConfigOptions methodsFor: 'recovered'!
setOption: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) newOptions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c4f58; bytecode file offset 0x9c1afc"
!SGOsConfigOptions methodsFor: 'recovered'!
target: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    target := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201033f8; bytecode file offset 0x9ffcbc"
!SGOsConfigOptions methodsFor: 'recovered'!
loadSystemDefaults: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := TGPlatform.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) osLogicKey.
    recoveredValue3 := (recoveredValue0) createFromOSLogicKey: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue4) systemDefaultsOsSettings: (self).
    ^self
! !

"ASDBase.ic method 0x2010db78; bytecode file offset 0xa0a474"
!SGOsConfigOptions methodsFor: 'recovered'!
getStringOption: recoveredArg1
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
            recoveredStack2 := [
    ''
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getStringOption: (recoveredStack1) default: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012c064; bytecode file offset 0xa28928"
!SGOsConfigOptions methodsFor: 'recovered'!
interpolationMapping
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) interpolationMappingKey.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := (self) osTool.
    recoveredBlock6Value1 := (recoveredBlock6Value0) getInterpolationAliasMapping.
    recoveredBlock6Value1
].
    recoveredValue2 := (self) getStringOption: (recoveredValue0) default: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2015d948; bytecode file offset 0xa5a208"
!SGOsConfigOptions methodsFor: 'recovered'!
newOptions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := newOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
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
            newOptions := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) convertOldStyle.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := newOptions.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202821b0; bytecode file offset 0xb7ea78"
!SGOsConfigOptions methodsFor: 'recovered'!
target
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) targetClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetType.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            target := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) targetClass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetType.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            target := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2029c148; bytecode file offset 0xb98a24"
!SGOsConfigOptions methodsFor: 'recovered'!
getBoolOption: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) newOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    'FALSE'
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) trimBlanks.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) asUppercase.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'TRUE'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBoolean.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202cb400; bytecode file offset 0xbc7cc0"
!SGOsConfigOptions methodsFor: 'recovered'!
getOption: recoveredArg1 from: recoveredArg2 default: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock10Value0 |
    recoveredBlock10Value0 := recoveredArg3.
    recoveredBlock10Value0
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2035b348; bytecode file offset 0xc57c14"
!SGOsConfigOptions methodsFor: 'recovered'!
equalTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) stringOptionKeys.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
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
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) getStringOption: (recoveredBlock5Stack3).
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg1.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack4 := recoveredBlock5Arg1.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) getStringOption: (recoveredBlock5Stack4).
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) equals: (recoveredBlock5Stack3).
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 29] ifFalse: [recoveredBlock5PC := 26].
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack1 := false.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := (self) boolOptionKeys.
    recoveredValue3 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Stack0 recoveredBlock35Stack1 recoveredBlock35Stack2 recoveredBlock35Stack3 recoveredBlock35Stack4 recoveredBlock35Stack5 recoveredBlock35PC recoveredBlock35Step recoveredBlock35Done recoveredBlock35Result |
    recoveredBlock35Stack0 := self.
    recoveredBlock35PC := 42.
    recoveredBlock35Done := false.
    [recoveredBlock35Done not] whileTrue: [
        recoveredBlock35Step := recoveredBlock35PC.
        recoveredBlock35Step = 42 ifTrue: [
            recoveredBlock35Stack1 := nil.
            recoveredBlock35PC := 43.
        ].
        recoveredBlock35Step = 43 ifTrue: [
            recoveredBlock35Stack2 := self.
            recoveredBlock35PC := 44.
        ].
        recoveredBlock35Step = 44 ifTrue: [
            recoveredBlock35Stack3 := recoveredBlock35Arg1.
            recoveredBlock35PC := 45.
        ].
        recoveredBlock35Step = 45 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) getBoolOption: (recoveredBlock35Stack3).
            recoveredBlock35PC := 47.
        ].
        recoveredBlock35Step = 47 ifTrue: [
            recoveredBlock35Stack3 := recoveredArg1.
            recoveredBlock35PC := 50.
        ].
        recoveredBlock35Step = 50 ifTrue: [
            recoveredBlock35Stack4 := recoveredBlock35Arg1.
            recoveredBlock35PC := 51.
        ].
        recoveredBlock35Step = 51 ifTrue: [
            recoveredBlock35Stack3 := (recoveredBlock35Stack3) getBoolOption: (recoveredBlock35Stack4).
            recoveredBlock35PC := 53.
        ].
        recoveredBlock35Step = 53 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) equals: (recoveredBlock35Stack3).
            recoveredBlock35PC := 54.
        ].
        recoveredBlock35Step = 54 ifTrue: [
            (recoveredBlock35Stack2) ifTrue: [recoveredBlock35PC := 61] ifFalse: [recoveredBlock35PC := 58].
        ].
        recoveredBlock35Step = 58 ifTrue: [
            recoveredBlock35PC := 59.
        ].
        recoveredBlock35Step = 59 ifTrue: [
            recoveredBlock35Stack1 := false.
            recoveredBlock35PC := 60.
        ].
        recoveredBlock35Step = 60 ifTrue: [
            ^recoveredBlock35Stack1
        ].
        recoveredBlock35Step = 61 ifTrue: [
            recoveredBlock35Result := recoveredBlock35Stack1.
            recoveredBlock35Done := true.
        ].
    ].
    recoveredBlock35Result
].
    (recoveredValue2) do: (recoveredValue3).
    ^true
! !

"ASDBase.ic method 0x2036451c; bytecode file offset 0xc60df8"
!SGOsConfigOptions methodsFor: 'recovered'!
duplicate
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := super duplicate.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (self) target.
    (recoveredValue1) target: (recoveredValue2).
    recoveredValue3 := (self) stringOptionKeys.
    recoveredValue4 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 recoveredBlock21Value4 |
    recoveredBlock21Value0 := recoveredLocal1.
    recoveredBlock21Value1 := recoveredBlock21Arg1.
    recoveredBlock21Value2 := recoveredBlock21Arg1.
    recoveredBlock21Value3 := (self) getStringOption: (recoveredBlock21Value2).
    recoveredBlock21Value4 := (recoveredBlock21Value0) setOption: (recoveredBlock21Value1) to: (recoveredBlock21Value3).
    recoveredBlock21Value4
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := (self) boolOptionKeys.
    recoveredValue6 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 recoveredBlock44Value3 recoveredBlock44Value4 |
    recoveredBlock44Value0 := recoveredLocal1.
    recoveredBlock44Value1 := recoveredBlock44Arg1.
    recoveredBlock44Value2 := recoveredBlock44Arg1.
    recoveredBlock44Value3 := (self) getBoolOption: (recoveredBlock44Value2).
    recoveredBlock44Value4 := (recoveredBlock44Value0) setOption: (recoveredBlock44Value1) to: (recoveredBlock44Value3).
    recoveredBlock44Value4
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x2036f9b0; bytecode file offset 0xc6c29c"
!SGOsConfigOptions methodsFor: 'recovered'!
stringOptionKeys
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) operatingSystemKey.
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) configToolOptionsKey.
    (recoveredValue4) add: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) includePathKey.
    (recoveredValue6) add: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) librariesKey.
    (recoveredValue8) add: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) libraryPathKey.
    (recoveredValue10) add: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) oilFileKey.
    (recoveredValue12) add: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) osTemplateFileKey.
    (recoveredValue14) add: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := (self) interpolationMappingKey.
    (recoveredValue16) add: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := (self) arXmlConfigurationFileKey.
    (recoveredValue18) add: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := (self) memorySectionsFileKey.
    (recoveredValue20) add: (recoveredValue21).
    recoveredValue22 := (recoveredValue1) asArray.
    ^recoveredValue22
! !

"ASDBase.ic method 0x20371228; bytecode file offset 0xc6dafc"
!SGOsConfigOptions methodsFor: 'recovered'!
updateWithSystemDefaults: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) stringOptionKeys.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8Stack5 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack2 := self.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) newOptions.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Arg1.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) includesKey: (recoveredBlock8Stack3).
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 32] ifFalse: [recoveredBlock8PC := 22].
        ].
        recoveredBlock8Step = 22 ifTrue: [
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 24.
        ].
        recoveredBlock8Step = 24 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg1.
            recoveredBlock8PC := 28.
        ].
        recoveredBlock8Step = 28 ifTrue: [
            recoveredBlock8Stack4 := recoveredBlock8Arg1.
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            recoveredBlock8Stack3 := (recoveredBlock8Stack3) getStringOption: (recoveredBlock8Stack4).
            recoveredBlock8PC := 30.
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) setOption: (recoveredBlock8Stack2) to: (recoveredBlock8Stack3).
            recoveredBlock8PC := 32.
        ].
        recoveredBlock8Step = 32 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) boolOptionKeys.
    recoveredValue5 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Stack0 recoveredBlock40Stack1 recoveredBlock40Stack2 recoveredBlock40Stack3 recoveredBlock40Stack4 recoveredBlock40Stack5 recoveredBlock40PC recoveredBlock40Step recoveredBlock40Done recoveredBlock40Result |
    recoveredBlock40Stack0 := self.
    recoveredBlock40PC := 46.
    recoveredBlock40Done := false.
    [recoveredBlock40Done not] whileTrue: [
        recoveredBlock40Step := recoveredBlock40PC.
        recoveredBlock40Step = 46 ifTrue: [
            recoveredBlock40Stack1 := nil.
            recoveredBlock40PC := 47.
        ].
        recoveredBlock40Step = 47 ifTrue: [
            recoveredBlock40Stack2 := self.
            recoveredBlock40PC := 48.
        ].
        recoveredBlock40Step = 48 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) newOptions.
            recoveredBlock40PC := 49.
        ].
        recoveredBlock40Step = 49 ifTrue: [
            recoveredBlock40Stack3 := recoveredBlock40Arg1.
            recoveredBlock40PC := 50.
        ].
        recoveredBlock40Step = 50 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) includesKey: (recoveredBlock40Stack3).
            recoveredBlock40PC := 51.
        ].
        recoveredBlock40Step = 51 ifTrue: [
            (recoveredBlock40Stack2) ifTrue: [recoveredBlock40PC := 65] ifFalse: [recoveredBlock40PC := 54].
        ].
        recoveredBlock40Step = 54 ifTrue: [
            recoveredBlock40PC := 55.
        ].
        recoveredBlock40Step = 55 ifTrue: [
            recoveredBlock40Stack1 := self.
            recoveredBlock40PC := 56.
        ].
        recoveredBlock40Step = 56 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 57.
        ].
        recoveredBlock40Step = 57 ifTrue: [
            recoveredBlock40Stack3 := recoveredArg1.
            recoveredBlock40PC := 60.
        ].
        recoveredBlock40Step = 60 ifTrue: [
            recoveredBlock40Stack4 := recoveredBlock40Arg1.
            recoveredBlock40PC := 61.
        ].
        recoveredBlock40Step = 61 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) getBoolOption: (recoveredBlock40Stack4).
            recoveredBlock40PC := 63.
        ].
        recoveredBlock40Step = 63 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) setOption: (recoveredBlock40Stack2) to: (recoveredBlock40Stack3).
            recoveredBlock40PC := 65.
        ].
        recoveredBlock40Step = 65 ifTrue: [
            recoveredBlock40Result := recoveredBlock40Stack1.
            recoveredBlock40Done := true.
        ].
    ].
    recoveredBlock40Result
].
    (recoveredValue4) do: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x204734ec; bytecode file offset 0xd6fdbc"
!SGOsConfigOptions methodsFor: 'recovered'!
convertOldStyle
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := configToolOptions.
    recoveredValue1 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := configToolOptions.
    (self) configToolOptions: (recoveredBlock6Value0).
    configToolOptions := nil.
    nil
].
    (recoveredValue0) notNil: (recoveredValue1).
    recoveredValue2 := includePath.
    recoveredValue3 := [
    | recoveredBlock25Value0 |
    recoveredBlock25Value0 := includePath.
    (self) includePath: (recoveredBlock25Value0).
    includePath := nil.
    nil
].
    (recoveredValue2) notNil: (recoveredValue3).
    recoveredValue4 := libraries.
    recoveredValue5 := [
    | recoveredBlock45Value0 |
    recoveredBlock45Value0 := libraries.
    (self) libraries: (recoveredBlock45Value0).
    libraries := nil.
    nil
].
    (recoveredValue4) notNil: (recoveredValue5).
    recoveredValue6 := libraryPath.
    recoveredValue7 := [
    | recoveredBlock65Value0 |
    recoveredBlock65Value0 := libraryPath.
    (self) libraryPath: (recoveredBlock65Value0).
    libraryPath := nil.
    nil
].
    (recoveredValue6) notNil: (recoveredValue7).
    recoveredValue8 := oilFile.
    recoveredValue9 := [
    | recoveredBlock85Value0 |
    recoveredBlock85Value0 := oilFile.
    (self) oilFile: (recoveredBlock85Value0).
    oilFile := nil.
    nil
].
    (recoveredValue8) notNil: (recoveredValue9).
    recoveredValue10 := operatingSystem.
    recoveredValue11 := [
    | recoveredBlock105Value0 |
    recoveredBlock105Value0 := operatingSystem.
    (self) operatingSystem: (recoveredBlock105Value0).
    operatingSystem := nil.
    nil
].
    (recoveredValue10) notNil: (recoveredValue11).
    ^self
! !

