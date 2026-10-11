"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000b9f0; bytecode file offset 0x908be4"
!TGOperatingSystemTool methodsFor: 'recovered'!
generationOptions
    | recoveredValue0 |
    recoveredValue0 := (self) identifier.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000c0e0; bytecode file offset 0x908be4"
!TGOperatingSystemTool methodsFor: 'recovered'!
getMemorySectionsFile
    | recoveredValue0 |
    recoveredValue0 := (self) systemDefaultMemorySectionsFile.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20049abc; bytecode file offset 0x947128"
!TGOperatingSystemTool methodsFor: 'recovered'!
hasBasePathDeclaration
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) basePathKeyName.
    recoveredValue1 := (self) hasOptionDeclaration: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20074c64; bytecode file offset 0x9757c8"
!TGOperatingSystemTool methodsFor: 'recovered'!
supportsOSConfiguration
    ^true
! !

"ASDBase.ic method 0x20085c88; bytecode file offset 0x982564"
!TGOperatingSystemTool methodsFor: 'recovered'!
<= recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) label.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) label.
    recoveredValue3 := (recoveredValue0) <= (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008f248; bytecode file offset 0x98bd60"
!TGOperatingSystemTool methodsFor: 'recovered'!
isRtioCategoryNone
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) rtioCategory.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) rtioCategoryNone.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008f2ac; bytecode file offset 0x98bd60"
!TGOperatingSystemTool methodsFor: 'recovered'!
isOSCategoryERCOSEK
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) osCategory.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) osCategoryERCOSEK.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008f2c0; bytecode file offset 0x98bd60"
!TGOperatingSystemTool methodsFor: 'recovered'!
isOSCategoryOSEK
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) osCategory.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) osCategoryOSEK.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008f374; bytecode file offset 0x98bd60"
!TGOperatingSystemTool methodsFor: 'recovered'!
isRtioCategoryHWC
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) rtioCategory.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) rtioCategoryHWC.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008f39c; bytecode file offset 0x98bd60"
!TGOperatingSystemTool methodsFor: 'recovered'!
isOSCategoryGENERIC
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) osCategory.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) osCategoryGENERIC.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008f3d8; bytecode file offset 0x98bd60"
!TGOperatingSystemTool methodsFor: 'recovered'!
isRtioCategoryETC
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) rtioCategory.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) rtioCategoryETC.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008f48c; bytecode file offset 0x98bd60"
!TGOperatingSystemTool methodsFor: 'recovered'!
isOSCategoryAUTOSAR
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) osCategory.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) osCategoryAUTOSAR.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009d8bc; bytecode file offset 0x99a2e4"
!TGOperatingSystemTool methodsFor: 'recovered'!
systemDefaultMemorySectionsFile
    | recoveredValue0 |
    recoveredValue0 := (self) getAttributeValue: ('memorySectionsFile') default: ('%TARGET%\memorySections.xml').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009d90c; bytecode file offset 0x99a2e4"
!TGOperatingSystemTool methodsFor: 'recovered'!
getInterpolationAliasMapping
    | recoveredValue0 |
    recoveredValue0 := (self) getAttributeValue: ('interpolationAliasMapping') default: ('%TARGETROOT%\common\interpolation\ASCETAliasMapping.ini').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009d998; bytecode file offset 0x99a2e4"
!TGOperatingSystemTool methodsFor: 'recovered'!
getConfigToolOptions
    | recoveredValue0 |
    recoveredValue0 := (self) getAttributeValue: ('configToolOptions') default: ('').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009e310; bytecode file offset 0x99ad10"
!TGOperatingSystemTool methodsFor: 'recovered'!
supportedShortNameLength
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) arShortNameLengthKeyName.
    recoveredValue1 := (self) getAttributeValue: (recoveredValue0) default: ('32').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009e39c; bytecode file offset 0x99ad10"
!TGOperatingSystemTool methodsFor: 'recovered'!
supportedAUTOSARVersion
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) autosarVersionKeyName.
    recoveredValue1 := (self) getAttributeValue: (recoveredValue0) default: ('4.0.3').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200e257c; bytecode file offset 0x9dee60"
!TGOperatingSystemTool methodsFor: 'recovered'!
osCategory
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) osCategoryKeyName.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) osCategoryGENERIC.
    recoveredValue3 := (self) getAttributeValue: (recoveredValue0) default: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) asSymbol.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200e2598; bytecode file offset 0x9dee60"
!TGOperatingSystemTool methodsFor: 'recovered'!
rtioCategory
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) rtioCategoryKeyName.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) rtioCategoryNone.
    recoveredValue3 := (self) getAttributeValue: (recoveredValue0) default: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) asSymbol.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20117878; bytecode file offset 0xa14144"
!TGOperatingSystemTool methodsFor: 'recovered'!
getConfigTool
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) label.
    recoveredValue1 := ('c:\') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , ('.exe').
    recoveredValue3 := (self) getAttributeValue: ('configTool') default: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2013e5b0; bytecode file offset 0xa3ae78"
!TGOperatingSystemTool methodsFor: 'recovered'!
getArXmlConfigurationFile
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOSCategoryAUTOSAR.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 'arXmlConfigurationFile'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := '%TARGET%\arxmlOptions.xml'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAttributeValue: (recoveredStack1) default: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014fbec; bytecode file offset 0xa4c4b8"
!TGOperatingSystemTool methodsFor: 'recovered'!
arxmlConfigurationDeclFilename
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOSCategoryAUTOSAR.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := '%ASCET%\Formats\AUTOSAR\'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportedAUTOSARVersion.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := '\arxmlconfiguration.aod.xml'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018f940; bytecode file offset 0xa8c208"
!TGOperatingSystemTool methodsFor: 'recovered'!
getEccoOptionsFile
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOSCategoryAUTOSAR.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 'eccoOptionsFile'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := '%TARGET%\codegen_autosar.ini'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAttributeValue: (recoveredStack1) default: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'eccoOptionsFile'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := '%TARGET%\codegen_ecco.ini'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAttributeValue: (recoveredStack1) default: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a6ba0; bytecode file offset 0xaa346c"
!TGOperatingSystemTool methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) nextPutAll: ('os category: ').
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := (self) osCategory.
    (recoveredValue3) nextPutAll: (recoveredValue4).
    (recoveredValue1) cr.
    ^self
! !

"ASDBase.ic method 0x201ce3ec; bytecode file offset 0xacacb4"
!TGOperatingSystemTool methodsFor: 'recovered'!
checkForOsToolDeclaration: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredArg1.
    recoveredBlock5Value1 := (self) errLabelDeclarationCategory.
    recoveredBlock5Value2 := (self) identifier.
    (recoveredBlock5Value0) value: (recoveredBlock5Value1) value: (recoveredBlock5Value2).
    ^false
].
    (recoveredValue0) ifNil: (recoveredValue1).
    ^true
! !

"ASDBase.ic method 0x203739f4; bytecode file offset 0xc702e0"
!TGOperatingSystemTool methodsFor: 'recovered'!
addARXmlValidFilenameTemplateParameter: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) toolPathKey.
    recoveredValue5 := (self) getBasePath.
    recoveredValue6 := (recoveredValue5) asPathnameNoTrailingSeparator.
    (recoveredValue2) at: (recoveredValue4) put: (recoveredValue6).
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (self) class.
    recoveredValue9 := (recoveredValue8) toolPathKey.
    recoveredValue10 := (self) getBasePath.
    recoveredValue11 := (recoveredValue10) asPathnameNoTrailingSeparator.
    (recoveredValue7) at: (recoveredValue9) put: (recoveredValue11).
    recoveredValue12 := (self) getAttributeValue: ('filePlatformImplTypes') default: ('').
    recoveredLocal1 := recoveredValue12.
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (self) class.
    recoveredValue15 := (recoveredValue14) toolFileImplementationTypesKey.
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := recoveredLocal2.
    recoveredValue18 := (recoveredValue16) bindWithGeneralArguments: (recoveredValue17).
    (recoveredValue13) at: (recoveredValue15) put: (recoveredValue18).
    recoveredValue19 := (self) getAttributeValue: ('filePlatformBaseTypes') default: ('').
    recoveredLocal1 := recoveredValue19.
    recoveredValue20 := recoveredArg1.
    recoveredValue21 := (self) class.
    recoveredValue22 := (recoveredValue21) toolFileBaseTypesKey.
    recoveredValue23 := recoveredLocal1.
    recoveredValue24 := recoveredLocal2.
    recoveredValue25 := (recoveredValue23) bindWithGeneralArguments: (recoveredValue24).
    (recoveredValue20) at: (recoveredValue22) put: (recoveredValue25).
    ^self
! !

"ASDBase.ic method 0x203c38b4; bytecode file offset 0xcc01ac"
!TGOperatingSystemTool methodsFor: 'recovered'!
checkIfBasePathExists: recoveredArg1 target: recoveredArg2 source: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Rnz'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ASC_ETC'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasBasePathDeclaration.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBasePath.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkForExistency: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) basePathKeyName.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOption: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := 'root path'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGroup.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) optionGroup: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBasePath.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := ' root path'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack4 := (recoveredStack4) class.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack5 := (recoveredStack5) label.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := (recoveredStack4) optionGroup: (recoveredStack5).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) fatalMissingTool: (recoveredStack1) description: (recoveredStack2) optionLabel: (recoveredStack3) optionSection: (recoveredStack4) source: (recoveredStack5).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

