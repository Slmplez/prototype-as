"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20017858; bytecode file offset 0x92209c"
!SGAbstractARXmlGeneratorStrategy class methodsFor: 'recovered'!
rteUsageModeAccess
    ^'MODEACESS'
! !

"ASDBase.ic method 0x20018f8c; bytecode file offset 0x92209c"
!SGAbstractARXmlGeneratorStrategy class methodsFor: 'recovered'!
rteUsageOperation
    ^'OPERATION'
! !

"ASDBase.ic method 0x20024b48; bytecode file offset 0x92209c"
!SGAbstractARXmlGeneratorStrategy class methodsFor: 'recovered'!
rteUsageModeGroup
    ^'MODEGROUP'
! !

"ASDBase.ic method 0x20096b70; bytecode file offset 0x9937fc"
!SGAbstractARXmlGeneratorStrategy class methodsFor: 'recovered'!
createWithContext: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) genContext: (recoveredValue2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200ac08c; bytecode file offset 0x9a894c"
!SGAbstractARXmlGeneratorStrategy class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) settings: (recoveredValue3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201f5fcc; bytecode file offset 0xaf2890"
!SGAbstractARXmlGeneratorStrategy class methodsFor: 'recovered'!
selectAutosarXmlGeneratorClass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGAbstractARXmlComponentGeneratorStrategy.
    recoveredValue1 := (recoveredValue0) allSubclasses.
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := (recoveredBlock7Value0) matchesVersion: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue3 := [
    self
].
    recoveredValue4 := (recoveredValue1) detect: (recoveredValue2) ifNone: (recoveredValue3).
    ^recoveredValue4
! !

