"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012ac8; bytecode file offset 0x912098"
!TGOperatingSystemTool class methodsFor: 'recovered'!
xmlDefinedOptionsClass
    | recoveredValue0 |
    recoveredValue0 := ASDXMLOperatingSystemToolDeclaration.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20012bc4; bytecode file offset 0x912098"
!TGOperatingSystemTool class methodsFor: 'recovered'!
unknownToolClass
    | recoveredValue0 |
    recoveredValue0 := TGUnknownOSTool.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20015558; bytecode file offset 0x912098"
!TGOperatingSystemTool class methodsFor: 'recovered'!
internalDeclarationClass
    | recoveredValue0 |
    recoveredValue0 := TGInternalOSTool.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20017294; bytecode file offset 0x92209c"
!TGOperatingSystemTool class methodsFor: 'recovered'!
osCategoryERCOSEK
    ^'ERCOSEK'
! !

"ASDBase.ic method 0x20017330; bytecode file offset 0x92209c"
!TGOperatingSystemTool class methodsFor: 'recovered'!
rtioCategoryHWC
    ^'HWC'
! !

"ASDBase.ic method 0x20017b58; bytecode file offset 0x92209c"
!TGOperatingSystemTool class methodsFor: 'recovered'!
osCategoryOSEK
    ^'OSEK'
! !

"ASDBase.ic method 0x2001b8fc; bytecode file offset 0x92209c"
!TGOperatingSystemTool class methodsFor: 'recovered'!
osCategoryAUTOSAR
    ^'AUTOSAR'
! !

"ASDBase.ic method 0x2001d348; bytecode file offset 0x92209c"
!TGOperatingSystemTool class methodsFor: 'recovered'!
toolFileBaseTypesKey
    ^'TOOL.FILE.BASETYPES'
! !

"ASDBase.ic method 0x2001db88; bytecode file offset 0x92209c"
!TGOperatingSystemTool class methodsFor: 'recovered'!
rtioCategoryETC
    ^'ETC'
! !

"ASDBase.ic method 0x2001e278; bytecode file offset 0x92209c"
!TGOperatingSystemTool class methodsFor: 'recovered'!
toolFileImplementationTypesKey
    ^'TOOL.FILE.IMPLTYPES'
! !

"ASDBase.ic method 0x2001e5cc; bytecode file offset 0x92209c"
!TGOperatingSystemTool class methodsFor: 'recovered'!
errLabelDeclarationCategory
    ^'operating system'
! !

"ASDBase.ic method 0x2001efbc; bytecode file offset 0x92209c"
!TGOperatingSystemTool class methodsFor: 'recovered'!
rtioCategoryNone
    ^'none'
! !

"ASDBase.ic method 0x200222bc; bytecode file offset 0x92209c"
!TGOperatingSystemTool class methodsFor: 'recovered'!
toolPathKey
    ^'TOOL.PATH'
! !

"ASDBase.ic method 0x200227e4; bytecode file offset 0x92209c"
!TGOperatingSystemTool class methodsFor: 'recovered'!
osCategoryGENERIC
    ^'GENERIC'
! !

"ASDBase.ic method 0x20025670; bytecode file offset 0x92209c"
!TGOperatingSystemTool class methodsFor: 'recovered'!
xmlCategoryPrefix
    ^'OperatingSystem'
! !

"ASDBase.ic method 0x200827b4; bytecode file offset 0x97f140"
!TGOperatingSystemTool class methodsFor: 'recovered'!
optionGroup: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ('External Tools\Operating System\') , (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009e0b0; bytecode file offset 0x99a97c"
!TGOperatingSystemTool class methodsFor: 'recovered'!
removeInstances
    Instances := nil.
    Declarations := nil.
    ^self
! !

"ASDBase.ic method 0x2010db64; bytecode file offset 0xa0a474"
!TGOperatingSystemTool class methodsFor: 'recovered'!
toolIdentifierForLabel: recoveredArg1
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
    'ERCOSEK'
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) toolIdentifierForLabel: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013a4fc; bytecode file offset 0xa36dc8"
!TGOperatingSystemTool class methodsFor: 'recovered'!
createInternalOSToolGENERIC
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := TGTarget.
    recoveredValue1 := (recoveredValue0) genericOsType.
    recoveredValue2 := TGTarget.
    recoveredValue3 := (recoveredValue2) genericOsLabel.
    recoveredValue4 := (self) createInternalIdentifier: (recoveredValue1) label: (recoveredValue3).
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := (self) osCategoryGENERIC.
    (recoveredValue5) osCategory: (recoveredValue6).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2016e878; bytecode file offset 0xa6b188"
!TGOperatingSystemTool class methodsFor: 'recovered'!
instances
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Instances.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := (self) createInstancesCollection.
    recoveredBlock6Value1 := recoveredBlock6Value0.
    Instances := recoveredBlock6Value1.
    recoveredBlock6Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := Instances.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20183308; bytecode file offset 0xa7fbd8"
!TGOperatingSystemTool class methodsFor: 'recovered'!
createInternalDeclarations
    | recoveredValue0 |
    super createInternalDeclarations.
    (self) createInternalOSToolERCOSEK.
    (self) createInternalOSToolERCOSEK43.
    (self) createInternalOSToolGENERIC.
    recoveredValue0 := TGNoOSTool.
    (recoveredValue0) create.
    ^self
! !

"ASDBase.ic method 0x2018d0b0; bytecode file offset 0xa89a74"
!TGOperatingSystemTool class methodsFor: 'recovered'!
declarations
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Declarations.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block280d12bcValue0 block280d12bcValue1 block280d12bcValue2 |
    block280d12bcValue0 := LookupTable.
    block280d12bcValue1 := (block280d12bcValue0) new.
    block280d12bcValue2 := block280d12bcValue1.
    Declarations := block280d12bcValue2.
    block280d12bcValue1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := Declarations.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2019f598; bytecode file offset 0xa9be94"
!TGOperatingSystemTool class methodsFor: 'recovered'!
createInternalOSToolERCOSEK43
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := TGTarget.
    recoveredValue1 := (recoveredValue0) ercosek43Id.
    recoveredValue2 := TGTarget.
    recoveredValue3 := (recoveredValue2) ercosek43Label.
    recoveredValue4 := (self) createInternalIdentifier: (recoveredValue1) label: (recoveredValue3).
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := (self) osCategoryERCOSEK.
    (recoveredValue5) osCategory: (recoveredValue6).
    recoveredValue7 := recoveredValue4.
    recoveredValue8 := (self) rtioCategoryETC.
    (recoveredValue7) rtioCategory: (recoveredValue8).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2019f5c0; bytecode file offset 0xa9be94"
!TGOperatingSystemTool class methodsFor: 'recovered'!
createInternalOSToolERCOSEK
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := TGTarget.
    recoveredValue1 := (recoveredValue0) ercosekId.
    recoveredValue2 := TGTarget.
    recoveredValue3 := (recoveredValue2) ercosekLabel.
    recoveredValue4 := (self) createInternalIdentifier: (recoveredValue1) label: (recoveredValue3).
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := (self) osCategoryERCOSEK.
    (recoveredValue5) osCategory: (recoveredValue6).
    recoveredValue7 := recoveredValue4.
    recoveredValue8 := (self) rtioCategoryHWC.
    (recoveredValue7) rtioCategory: (recoveredValue8).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201cee04; bytecode file offset 0xacb6cc"
!TGOperatingSystemTool class methodsFor: 'recovered'!
availableDeclarationIdentifier: recoveredArg1 ifAbsent: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isEmpty.
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
            recoveredStack2 := TGTarget.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) genericOsType.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := super availableDeclarationIdentifier: (recoveredStack2) ifAbsent: (recoveredStack3).
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := super availableDeclarationIdentifier: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029cc04; bytecode file offset 0xb994e4"
!TGOperatingSystemTool class methodsFor: 'recovered'!
createWithOptions: recoveredArg1 updateOptions: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := super createWithOptions: (recoveredStack1) updateOptions: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) basePathKeyName.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOption: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [:block280e3958Arg1 | 
    | block280e3958Stack0 block280e3958Stack1 block280e3958Stack2 block280e3958Stack3 block280e3958Stack4 block280e3958PC block280e3958Step block280e3958Done block280e3958Result |
    block280e3958Stack0 := self.
    block280e3958PC := 4.
    block280e3958Done := false.
    [block280e3958Done not] whileTrue: [
        block280e3958Step := block280e3958PC.
        block280e3958Step = 4 ifTrue: [
            block280e3958Stack1 := nil.
            block280e3958PC := 5.
        ].
        block280e3958Step = 5 ifTrue: [
            block280e3958Stack2 := block280e3958Arg1.
            block280e3958PC := 6.
        ].
        block280e3958Step = 6 ifTrue: [
            block280e3958Stack2 := (block280e3958Stack2) value.
            block280e3958PC := 8.
        ].
        block280e3958Step = 8 ifTrue: [
            block280e3958Stack3 := '%ETC-PATHS.RTA/RTA5-ES900%'.
            block280e3958PC := 10.
        ].
        block280e3958Step = 10 ifTrue: [
            block280e3958Stack2 := (block280e3958Stack2) equals: (block280e3958Stack3).
            block280e3958PC := 12.
        ].
        block280e3958Step = 12 ifTrue: [
            (block280e3958Stack2) ifTrue: [block280e3958PC := 16] ifFalse: [block280e3958PC := 23].
        ].
        block280e3958Step = 16 ifTrue: [
            block280e3958PC := 17.
        ].
        block280e3958Step = 17 ifTrue: [
            block280e3958Stack1 := block280e3958Arg1.
            block280e3958PC := 18.
        ].
        block280e3958Step = 18 ifTrue: [
            block280e3958Stack2 := block280e3958Arg1.
            block280e3958PC := 19.
        ].
        block280e3958Step = 19 ifTrue: [
            block280e3958Stack2 := (block280e3958Stack2) xmlDefault.
            block280e3958PC := 21.
        ].
        block280e3958Step = 21 ifTrue: [
            block280e3958Stack1 := (block280e3958Stack1) value: (block280e3958Stack2).
            block280e3958PC := 23.
        ].
        block280e3958Step = 23 ifTrue: [
            block280e3958Result := block280e3958Stack1.
            block280e3958Done := true.
        ].
    ].
    block280e3958Result
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

