"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015c14; bytecode file offset 0x92209c"
!SGCgAbstractSettings class methodsFor: 'recovered'!
elementCTypeNameKey
    ^'ELEMENT.CTYPE.NAME'
! !

"ASDBase.ic method 0x20016190; bytecode file offset 0x92209c"
!SGCgAbstractSettings class methodsFor: 'recovered'!
settingsCrcValueKey
    ^'SettingsCRCValue'
! !

"ASDBase.ic method 0x20017cd8; bytecode file offset 0x92209c"
!SGCgAbstractSettings class methodsFor: 'recovered'!
nameTemplateKeys
    ^#()
! !

"ASDBase.ic method 0x2001ab4c; bytecode file offset 0x92209c"
!SGCgAbstractSettings class methodsFor: 'recovered'!
projectPropertiesComponentPrefixKey
    ^'PROJECT.PROPERTIES.COMPONENTPREFIX'
! !

"ASDBase.ic method 0x200204a4; bytecode file offset 0x92209c"
!SGCgAbstractSettings class methodsFor: 'recovered'!
projectPropertiesGlobalElementPrefixKey
    ^'PROJECT.PROPERTIES.GLOBALELEMENTPREFIX'
! !

"ASDBase.ic method 0x200223e8; bytecode file offset 0x92209c"
!SGCgAbstractSettings class methodsFor: 'recovered'!
targetPropertiesGlobalNamespacePrefixKey
    ^'TARGET.PROPERTIES.GLOBALNAMEPREFIX'
! !

"ASDBase.ic method 0x2002279c; bytecode file offset 0x92209c"
!SGCgAbstractSettings class methodsFor: 'recovered'!
methodNameKey
    ^'METHOD.NAME'
! !

"ASDBase.ic method 0x20022cc4; bytecode file offset 0x92209c"
!SGCgAbstractSettings class methodsFor: 'recovered'!
elementInstancePathKey
    ^'ELEMENT.INSTANCEPATH'
! !

"ASDBase.ic method 0x20022e50; bytecode file offset 0x92209c"
!SGCgAbstractSettings class methodsFor: 'recovered'!
elementNameKey
    ^'ELEMENT.NAME'
! !

"ASDBase.ic method 0x200243a4; bytecode file offset 0x92209c"
!SGCgAbstractSettings class methodsFor: 'recovered'!
unknownKey
    ^'unknown'
! !

"ASDBase.ic method 0x20026a64; bytecode file offset 0x923928"
!SGCgAbstractSettings class methodsFor: 'recovered'!
missingFilenameString
    ^'<empty filename>'
! !

"ASDBase.ic method 0x20026be4; bytecode file offset 0x923928"
!SGCgAbstractSettings class methodsFor: 'recovered'!
versionStringKey
    ^'Version'
! !

"ASDBase.ic method 0x20096f40; bytecode file offset 0x9937fc"
!SGCgAbstractSettings class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) buildEnvironmentInfo: (recoveredValue2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x201b34cc; bytecode file offset 0xaafd94"
!SGCgAbstractSettings class methodsFor: 'recovered'!
defaultASAPNameTemplate: recoveredArg1
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
            recoveredStack2 := ASDTargetSpecificOptionsDeclaration.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) asapDisplayIdLocalElementKey.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := ASDTargetSpecificOptionsDeclaration.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) asapIdentifierLocalElementKey.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := '%ELEMENT.INSTANCEPATH%'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := '%ELEMENT.NAME%'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201f45f4; bytecode file offset 0xaf0eb8"
!SGCgAbstractSettings class methodsFor: 'recovered'!
startsWithReservedName: recoveredArg1
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
            recoveredStack2 := SGReservedNames.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) tempVarName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) startsWith: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := SGReservedNames.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempVarName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := SGReservedNames.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) companyName.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) startsWith: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := SGReservedNames.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) companyName.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2022f86c; bytecode file offset 0xb2c140"
!SGCgAbstractSettings class methodsFor: 'recovered'!
asapNameTemplateKeys
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := ASDTargetSpecificOptionsDeclaration.
    recoveredValue4 := (recoveredValue3) asapDisplayIdExportedElementKey.
    (recoveredValue2) add: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := ASDTargetSpecificOptionsDeclaration.
    recoveredValue7 := (recoveredValue6) asapDisplayIdLocalElementKey.
    (recoveredValue5) add: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := ASDTargetSpecificOptionsDeclaration.
    recoveredValue10 := (recoveredValue9) asapIdentifierExportedElementKey.
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := ASDTargetSpecificOptionsDeclaration.
    recoveredValue13 := (recoveredValue12) asapIdentifierLocalElementKey.
    (recoveredValue11) add: (recoveredValue13).
    ^recoveredValue1
! !

