"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"EHOOKS.ic method 0x20000048; bytecode file offset 0xf194"
!ASDAbstractEHooksConfigurationAdapter methodsFor: 'recovered'!
allEcuVariables
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"EHOOKS.ic method 0x20000074; bytecode file offset 0xf1a8"
!ASDAbstractEHooksConfigurationAdapter methodsFor: 'recovered'!
getMappingForAscetVariable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"EHOOKS.ic method 0x20000088; bytecode file offset 0xf1c8"
!ASDAbstractEHooksConfigurationAdapter methodsFor: 'recovered'!
setMappingTo: recoveredArg1 forAscetVariable: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"EHOOKS.ic method 0x20000094; bytecode file offset 0xf1c8"
!ASDAbstractEHooksConfigurationAdapter methodsFor: 'recovered'!
isRecentlyAutomapped: recoveredArg1 inWidget: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"EHOOKS.ic method 0x200000b8; bytecode file offset 0xf1ec"
!ASDAbstractEHooksConfigurationAdapter methodsFor: 'recovered'!
selectEHooksVariableWidget: recoveredArg1 name: recoveredArg2 measurementName: recoveredArg3 index: recoveredArg4 selection: recoveredArg5
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"EHOOKS.ic method 0x2000038c; bytecode file offset 0xf514"
!ASDAbstractEHooksConfigurationAdapter methodsFor: 'recovered'!
widgetFilterText
    (self) subclassResponsibility.
    ^self
! !

"EHOOKS.ic method 0x20000398; bytecode file offset 0xf514"
!ASDAbstractEHooksConfigurationAdapter methodsFor: 'recovered'!
tabLabel
    (self) subclassResponsibility.
    ^self
! !

"EHOOKS.ic method 0x200003e0; bytecode file offset 0xf514"
!ASDAbstractEHooksConfigurationAdapter methodsFor: 'recovered'!
headingLabel
    (self) subclassResponsibility.
    ^self
! !

"EHOOKS.ic method 0x20000520; bytecode file offset 0xf660"
!ASDAbstractEHooksConfigurationAdapter methodsFor: 'recovered'!
eHooksConfigBlock
    | recoveredValue0 |
    recoveredValue0 := eHooksConfigBlock.
    ^recoveredValue0
! !

"EHOOKS.ic method 0x2000069c; bytecode file offset 0xf7cc"
!ASDAbstractEHooksConfigurationAdapter methodsFor: 'recovered'!
supportsBackupCopy
    ^false
! !

"EHOOKS.ic method 0x20000af4; bytecode file offset 0xfc34"
!ASDAbstractEHooksConfigurationAdapter methodsFor: 'recovered'!
eHooksConfigBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    eHooksConfigBlock := recoveredValue0.
    ^self
! !

