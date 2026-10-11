"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002ba0; bytecode file offset 0x8ffcfc"
!ASDXMLTargetDeclaration methodsFor: 'recovered'!
initDeclarationFiles
    ^self
! !

"ASDBase.ic method 0x20004ec0; bytecode file offset 0x90206c"
!ASDXMLTargetDeclaration methodsFor: 'recovered'!
readOptionsDeclarationsFromXMLFile: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20006fb0; bytecode file offset 0x908be4"
!ASDXMLTargetDeclaration methodsFor: 'recovered'!
externalOptionFile
    | recoveredValue0 |
    recoveredValue0 := (self) externalToolsOptionFile.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20026c08; bytecode file offset 0x923928"
!ASDXMLTargetDeclaration methodsFor: 'recovered'!
xmlTargetCategory
    ^'Target'
! !

"ASDBase.ic method 0x2002b024; bytecode file offset 0x934580"
!ASDXMLTargetDeclaration methodsFor: 'recovered'!
optionGroupTargets
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) optionGroupTargets.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002b984; bytecode file offset 0x934580"
!ASDXMLTargetDeclaration methodsFor: 'recovered'!
platform
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) prjContext.
    recoveredValue1 := (recoveredValue0) platform.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037f50; bytecode file offset 0x934b68"
!ASDXMLTargetDeclaration methodsFor: 'recovered'!
getXmlCategory: recoveredArg1
    ^'will_be_defined_later_after_reading_declaration_in_createWithOptions'
! !

"ASDBase.ic method 0x20052578; bytecode file offset 0x94f0e0"
!ASDXMLTargetDeclaration methodsFor: 'recovered'!
targetIdentifier
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) platform.
    recoveredValue1 := (recoveredValue0) target.
    recoveredValue2 := (recoveredValue1) targetType.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20057a18; bytecode file offset 0x956284"
!ASDXMLTargetDeclaration methodsFor: 'recovered'!
optionGroup: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) optionGroup: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005ce80; bytecode file offset 0x9599ac"
!ASDXMLTargetDeclaration methodsFor: 'recovered'!
optionGroupBuild
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASDProjectSettings.
    recoveredValue1 := (recoveredValue0) optionGroupBuild.
    recoveredValue2 := (self) optionSubGroup: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006a018; bytecode file offset 0x966bdc"
!ASDXMLTargetDeclaration methodsFor: 'recovered'!
prjContext
    | recoveredValue0 |
    recoveredValue0 := prjContext.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007cdbc; bytecode file offset 0x97c330"
!ASDXMLTargetDeclaration methodsFor: 'recovered'!
sensitiveTargetIdentifier
    ^false
! !

"ASDBase.ic method 0x2007f1ec; bytecode file offset 0x97c330"
!ASDXMLTargetDeclaration methodsFor: 'recovered'!
sensitiveTargetCategory
    ^false
! !

"ASDBase.ic method 0x200b4514; bytecode file offset 0x9b0df8"
!ASDXMLTargetDeclaration methodsFor: 'recovered'!
optionGroupTarget
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) platform.
    recoveredValue2 := (recoveredValue1) target.
    recoveredValue3 := (recoveredValue2) targetLabel.
    recoveredValue4 := (recoveredValue0) optionGroup: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200c1080; bytecode file offset 0x9bdf14"
!ASDXMLTargetDeclaration methodsFor: 'recovered'!
prjContext: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    prjContext := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d71f8; bytecode file offset 0x9d3b64"
!ASDXMLTargetDeclaration methodsFor: 'recovered'!
declarationFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) removeDoubleBackslashes.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue2).
    (self) declarationFiles: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200d8cc0; bytecode file offset 0x9d5584"
!ASDXMLTargetDeclaration methodsFor: 'recovered'!
removeInstanceFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) platform.
    recoveredValue2 := (recoveredValue1) targetDeclarationInstanceIdentifier.
    recoveredValue3 := [].
    (recoveredValue0) removeKey: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2011ecbc; bytecode file offset 0xa1b588"
!ASDXMLTargetDeclaration methodsFor: 'recovered'!
optionSubGroup: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) platform.
    recoveredValue1 := (recoveredValue0) target.
    recoveredValue2 := (recoveredValue1) targetLabel.
    recoveredValue3 := (self) optionGroup: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , ('\').
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue4) , (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201a8c98; bytecode file offset 0xaa55d0"
!ASDXMLTargetDeclaration methodsFor: 'recovered'!
optionForKey: recoveredArg1 ifNone: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) options.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) attributeName.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201e4d84; bytecode file offset 0xae165c"
!ASDXMLTargetDeclaration methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    super initialize.
    (self) initializeOptionDeclarations.
    recoveredValue0 := options.
    recoveredValue1 := ASDTargetSpecificOptionsDeclaration.
    recoveredValue2 := (self) prjContext.
    recoveredValue3 := (recoveredValue1) createForProjContext: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) options.
    (recoveredValue0) addAll: (recoveredValue4).
    (self) writeOptionsToXMLFiles.
    ^self
! !

"ASDBase.ic method 0x20254df4; bytecode file offset 0xb516cc"
!ASDXMLTargetDeclaration methodsFor: 'recovered'!
targetCategory
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) platform.
    recoveredValue1 := (recoveredValue0) target.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) isExperimentalTarget.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            (recoveredBlock6Stack1) ifTrue: [recoveredBlock6PC := 18] ifFalse: [recoveredBlock6PC := 30].
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) isPCTarget.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            (recoveredBlock6Stack1) ifTrue: [recoveredBlock6PC := 24] ifFalse: [recoveredBlock6PC := 27].
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack1 := 'PC'.
            recoveredBlock6PC := 26.
        ].
        recoveredBlock6Step = 26 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Stack1 := 'Experimental'.
            recoveredBlock6PC := 29.
        ].
        recoveredBlock6Step = 29 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 30 ifTrue: [
            recoveredBlock6Stack1 := 'Controller'.
            recoveredBlock6PC := 32.
        ].
        recoveredBlock6Step = 32 ifTrue: [
            ^recoveredBlock6Stack1
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^'unknown'
! !

"ASDBase.ic method 0x2044ef14; bytecode file offset 0xd4b824"
!ASDXMLTargetDeclaration methodsFor: 'recovered'!
initializeOptionDeclarations
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    options := recoveredValue1.
    recoveredValue2 := options.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := EtasXMLOptionEntry.
    recoveredValue5 := (self) xmlTargetCategory.
    recoveredValue6 := EtasStringOption.
    recoveredValue7 := (self) targetIdentifier.
    recoveredValue8 := (self) targetIdentifier.
    recoveredValue9 := (self) optionGroupTarget.
    recoveredValue10 := [
    | recoveredBlock36Value0 |
    recoveredBlock36Value0 := (self) sensitiveTargetIdentifier.
    recoveredBlock36Value0
].
    recoveredValue11 := (recoveredValue6) label: ('Unique Identifier') description: ('Unique identifier of target, used to identify this specific target among all others.') toolTip: ('unique identifier') value: (recoveredValue7) default: (recoveredValue8) group: (recoveredValue9) visible: (true) sensitive: (recoveredValue10) type: ('CODE') userField: (nil).
    recoveredValue12 := (recoveredValue4) xmlCategory: (recoveredValue5) attributeName: ('identifier') optionClass: (recoveredValue11) optionFile: (nil).
    recoveredValue13 := (recoveredValue12) optionCategory: ('FIXED').
    (recoveredValue3) add: (recoveredValue13).
    recoveredValue14 := recoveredValue2.
    recoveredValue15 := EtasXMLOptionEntry.
    recoveredValue16 := (self) xmlTargetCategory.
    recoveredValue17 := EtasStringOption.
    recoveredValue18 := (self) targetCategory.
    recoveredValue19 := (self) targetCategory.
    recoveredValue20 := (self) optionGroupTarget.
    recoveredValue21 := [
    | recoveredBlock86Value0 |
    recoveredBlock86Value0 := (self) sensitiveTargetCategory.
    recoveredBlock86Value0
].
    recoveredValue22 := (recoveredValue17) label: ('Category') description: ('Category the target belongs to, i.e. inherits its general behavior. The following categories are supported:<br/>PC: This is actually a specialized category of experimental targets. PC target is available, even with no AddOn installed.<br\>.Experimental: This target can be used for simulation use cases.<br\>Controller: This target can be used for production use cases.') toolTip: ('category') value: (recoveredValue18) default: (recoveredValue19) group: (recoveredValue20) visible: (true) sensitive: (recoveredValue21) type: ('CODE') userField: (nil).
    recoveredValue23 := (recoveredValue15) xmlCategory: (recoveredValue16) attributeName: ('category') optionClass: (recoveredValue22) optionFile: (nil).
    recoveredValue24 := (recoveredValue23) optionCategory: ('FIXED').
    (recoveredValue14) add: (recoveredValue24).
    ^self
! !

