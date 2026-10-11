"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2033f540; bytecode file offset 0xc3be18"
!TGNoCompilerTool class methodsFor: 'recovered'!
create
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) noToolType.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) availableCompilerTools.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := (recoveredBlock10Value0) compilerToolType.
    recoveredBlock10Value2 := recoveredLocal1.
    recoveredBlock10Value3 := (recoveredBlock10Value1) = (recoveredBlock10Value2).
    recoveredBlock10Value3
].
    recoveredValue3 := [].
    recoveredValue4 := (recoveredValue1) detect: (recoveredValue2) ifNone: (recoveredValue3).
    recoveredValue5 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 |
    recoveredBlock27Value0 := recoveredBlock27Arg1.
    ^recoveredBlock27Value0
].
    (recoveredValue4) ifNotNil: (recoveredValue5).
    recoveredValue6 := (self) new.
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredLocal1.
    (recoveredValue7) identifier: (recoveredValue8).
    recoveredValue9 := recoveredLocal2.
    (self) addInstance: (recoveredValue9).
    recoveredValue10 := recoveredLocal2.
    ^recoveredValue10
! !

