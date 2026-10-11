"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001e608; bytecode file offset 0x92209c"
!ASDAtomicSoftwareComponentEditorOptions methodsFor: 'recovered'!
groupString
    ^'Appearance\Editors\Software Component'
! !

"ASDBase.ic method 0x2011d210; bytecode file offset 0xa19b6c"
!ASDAtomicSoftwareComponentEditorOptions methodsFor: 'recovered'!
optionSynchronizeInterfaceMethodNames
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^true
].
    recoveredValue1 := (self) optionAt: ('SynchronizeInterfaceMethodNames') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011d240; bytecode file offset 0xa19b6c"
!ASDAtomicSoftwareComponentEditorOptions methodsFor: 'recovered'!
optionLimitTo32Characters
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^true
].
    recoveredValue1 := (self) optionAt: ('LimitTo32Characters') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201916d8; bytecode file offset 0xa8dfa4"
!ASDAtomicSoftwareComponentEditorOptions methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    super initialize.
    recoveredValue0 := (self) options.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) initializeSynchronizeInterfaceMethodNames.
    (recoveredValue1) add: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := (self) initializeLimitTo32Characters.
    (recoveredValue3) add: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20252490; bytecode file offset 0xb4edac"
!ASDAtomicSoftwareComponentEditorOptions methodsFor: 'recovered'!
initializeLimitTo32Characters
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasBooleanOption.
    recoveredValue2 := (self) groupString.
    recoveredValue3 := (recoveredValue1) label: ('Limit Names to 32 Characters') description: ('If activated, ASCET will automatically reduce the size for automatically generated names to 32 characters as defined by AUTOSAR') toolTip: ('Reduce the size for automatically generated names to 32 characters as defined by AUTOSAR') value: (true) default: (true) group: (recoveredValue2) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue4 := (self) userOptionFile.
    recoveredValue5 := (recoveredValue0) xmlCategory: ('EditorSettings\AtomicSoftwareComponent') attributeName: ('LimitTo32Characters') optionClass: (recoveredValue3) optionFile: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x202524c8; bytecode file offset 0xb4edac"
!ASDAtomicSoftwareComponentEditorOptions methodsFor: 'recovered'!
initializeSynchronizeInterfaceMethodNames
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasBooleanOption.
    recoveredValue2 := (self) groupString.
    recoveredValue3 := (recoveredValue1) label: ('Synchronize Interface Method Names') description: ('If the name of a method signature has changed, all operations of this signature will be renamed on the next update of interfaces.') toolTip: ('Rename the operation if the method signature was renamed') value: (true) default: (true) group: (recoveredValue2) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue4 := (self) userOptionFile.
    recoveredValue5 := (recoveredValue0) xmlCategory: ('EditorSettings\AtomicSoftwareComponent') attributeName: ('SynchronizeInterfaceMethodNames') optionClass: (recoveredValue3) optionFile: (recoveredValue4).
    ^recoveredValue5
! !

