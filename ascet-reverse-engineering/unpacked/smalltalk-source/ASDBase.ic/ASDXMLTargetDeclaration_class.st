"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002632c; bytecode file offset 0x923928"
!ASDXMLTargetDeclaration class methodsFor: 'recovered'!
optionGroupTargets
    ^'Targets'
! !

"ASDBase.ic method 0x200ab0d4; bytecode file offset 0x9a79e4"
!ASDXMLTargetDeclaration class methodsFor: 'recovered'!
optionGroup: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) optionGroupTargets.
    recoveredValue1 := (recoveredValue0) , ('\').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2010ebb8; bytecode file offset 0xa0b484"
!ASDXMLTargetDeclaration class methodsFor: 'recovered'!
optionGroupBuildForTarget: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) targetLabel.
    recoveredValue2 := (self) optionGroup: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , ('\').
    recoveredValue4 := ASDProjectSettings.
    recoveredValue5 := (recoveredValue4) optionGroupBuild.
    recoveredValue6 := (recoveredValue3) , (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201331e8; bytecode file offset 0xa2fab0"
!ASDXMLTargetDeclaration class methodsFor: 'recovered'!
createForProjContext: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) declarationFile: ('').
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) prjContext: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) initialize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2027bc88; bytecode file offset 0xb7855c"
!ASDXMLTargetDeclaration class methodsFor: 'recovered'!
createForPlatform: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) instances.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) targetDeclarationInstanceIdentifier.
    recoveredValue3 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 |
    recoveredBlock9Value0 := SGPrjContext.
    recoveredBlock9Value1 := (recoveredBlock9Value0) new.
    recoveredBlock9Value2 := recoveredBlock9Value1.
    recoveredBlock9Value3 := recoveredArg1.
    (recoveredBlock9Value2) platform: (recoveredBlock9Value3).
    recoveredBlock9Value4 := recoveredBlock9Value1.
    (recoveredBlock9Value4) generationSettings: (nil).
    recoveredBlock9Value5 := (self) createForProjContext: (recoveredBlock9Value1).
    recoveredBlock9Value5
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsentPut: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

