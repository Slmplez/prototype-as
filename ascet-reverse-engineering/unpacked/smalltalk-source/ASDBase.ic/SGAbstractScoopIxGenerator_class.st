"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200aa924; bytecode file offset 0x9a71e8"
!SGAbstractScoopIxGenerator class methodsFor: 'recovered'!
createScoopIxGenerator: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) scoopixSettings.
    recoveredValue2 := (recoveredValue1) versionString.
    recoveredValue3 := (self) selectScoopIxGeneratorClass: (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) create: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2015ad10; bytecode file offset 0xa575dc"
!SGAbstractScoopIxGenerator class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) sixExpanderClass.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue4) create: (recoveredValue5).
    (recoveredValue2) expander: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredArg1.
    (recoveredValue7) context: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x201db814; bytecode file offset 0xad80e8"
!SGAbstractScoopIxGenerator class methodsFor: 'recovered'!
selectScoopIxGeneratorClass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) allSubclasses.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) matchesVersion: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    recoveredValue2 := [
    self
].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

