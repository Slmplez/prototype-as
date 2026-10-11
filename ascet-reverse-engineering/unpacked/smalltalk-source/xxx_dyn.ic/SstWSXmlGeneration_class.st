"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20002c68; bytecode file offset 0x63d44"
!SstWSXmlGeneration class methodsFor: 'recovered'!
schemaPrefixFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) name.
    recoveredValue2 := (recoveredValue1) abtXmlDefaultNamespacePrefix.
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20003508; bytecode file offset 0x64614"
!SstWSXmlGeneration class methodsFor: 'recovered'!
withSoapEncodingStyle
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := SstSoapDefaultEncodingNamespace.
    recoveredValue2 := (recoveredValue0) encodingStyle: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x2000561c; bytecode file offset 0x66a34"
!SstWSXmlGeneration class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200059f0; bytecode file offset 0x66ac0"
!SstWSXmlGeneration class methodsFor: 'recovered'!
schemaNamespaceFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SstWSToolsDefaultNamespacePrefix.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) name.
    recoveredValue3 := (recoveredValue0) , (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x200062c4; bytecode file offset 0x67394"
!SstWSXmlGeneration class methodsFor: 'recovered'!
forClass: recoveredArg1 saveTo: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) filePath: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) generateServiceFilesForClass: (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x2000a6d8; bytecode file offset 0x6b7b4"
!SstWSXmlGeneration class methodsFor: 'recovered'!
parameterDefaultSchemaType
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := AbtXmlObjectCache.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := AbtXmlSchema.
    recoveredValue3 := (recoveredValue2) defaultNamespace.
    recoveredValue4 := (recoveredValue1) typeNamed: ('string') inNamespace: (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x2001be78; bytecode file offset 0x7cf6c"
!SstWSXmlGeneration class methodsFor: 'recovered'!
forClass: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AbtXmlConfiguration.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultResourceQualifierKey.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := [
    | block2800b880Value0 block2800b880Value1 |
    block2800b880Value0 := CfsDirectoryDescriptor.
    block2800b880Value1 := (block2800b880Value0) startUpDirectoryPath.
    block2800b880Value1
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) propertyNamed: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := CfsDirectoryDescriptor.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathSeparator.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := CfsDirectoryDescriptor.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathSeparatorString.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) forClass: (recoveredStack1) saveTo: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

