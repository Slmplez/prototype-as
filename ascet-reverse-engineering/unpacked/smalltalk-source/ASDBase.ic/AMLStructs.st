"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200517cc; bytecode file offset 0x94f0e0"
!AMLStructs methodsFor: 'recovered'!
pathName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) name.
    recoveredValue2 := (recoveredValue1) asString.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20065a9c; bytecode file offset 0x963428"
!AMLStructs methodsFor: 'recovered'!
aml
    | recoveredValue0 |
    recoveredValue0 := aml.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be82c; bytecode file offset 0x9bb178"
!AMLStructs methodsFor: 'recovered'!
aml: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    aml := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x204b0d8c; bytecode file offset 0xdad67c"
!AMLStructs methodsFor: 'recovered'!
addInspectorMenuEntriesIn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := recoveredArg1.
    super addInspectorMenuEntriesIn: (recoveredValue0).
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) methodNamesCategorizedIn: (#('complexArgument')) all: (false).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) methodNamesCategorizedIn: (#('internal')) all: (false).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := [].
    (recoveredValue5) removeAll: (recoveredValue6) ifAbsent: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) asArray.
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := (recoveredValue10) asArray.
    recoveredLocal2 := recoveredValue11.
    recoveredValue12 := recoveredArg1.
    (recoveredValue12) addLine.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := [:recoveredBlock65Arg1 :recoveredBlock65Arg2 | 
    | recoveredBlock65Value0 recoveredBlock65Value1 recoveredBlock65Value2 recoveredBlock65Value3 recoveredBlock65Value4 recoveredBlock65Value5 recoveredBlock65Value6 |
    recoveredBlock65Value0 := recoveredArg1.
    recoveredBlock65Value1 := recoveredBlock65Arg1.
    recoveredBlock65Value2 := (recoveredBlock65Value1) selector.
    recoveredBlock65Value3 := recoveredBlock65Arg1.
    recoveredBlock65Value4 := (recoveredBlock65Value3) asString.
    recoveredBlock65Value5 := [
    | recoveredBlock65Block81Value0 recoveredBlock65Block81Value1 |
    recoveredBlock65Block81Value0 := aml.
    recoveredBlock65Block81Value1 := (recoveredBlock65Block81Value0) hasAMLValue.
    recoveredBlock65Block81Value1
].
    recoveredBlock65Value6 := (recoveredBlock65Value0) add: (recoveredBlock65Value2) label: (recoveredBlock65Value4) enable: (recoveredBlock65Value5).
    recoveredBlock65Value6
].
    (recoveredValue13) doWithIndex: (recoveredValue14).
    recoveredValue15 := recoveredArg1.
    (recoveredValue15) addLine.
    recoveredValue16 := recoveredLocal2.
    recoveredValue17 := [:recoveredBlock107Arg1 :recoveredBlock107Arg2 | 
    | recoveredBlock107Value0 recoveredBlock107Value1 recoveredBlock107Value2 recoveredBlock107Value3 recoveredBlock107Value4 recoveredBlock107Value5 recoveredBlock107Value6 |
    recoveredBlock107Value0 := recoveredArg1.
    recoveredBlock107Value1 := recoveredBlock107Arg1.
    recoveredBlock107Value2 := (recoveredBlock107Value1) selector.
    recoveredBlock107Value3 := recoveredBlock107Arg1.
    recoveredBlock107Value4 := (recoveredBlock107Value3) asString.
    recoveredBlock107Value5 := [
    | recoveredBlock107Block123Value0 recoveredBlock107Block123Value1 |
    recoveredBlock107Block123Value0 := aml.
    recoveredBlock107Block123Value1 := (recoveredBlock107Block123Value0) hasAMLValue.
    recoveredBlock107Block123Value1
].
    recoveredBlock107Value6 := (recoveredBlock107Value0) add: (recoveredBlock107Value2) label: (recoveredBlock107Value4) enable: (recoveredBlock107Value5).
    recoveredBlock107Value6
].
    (recoveredValue16) doWithIndex: (recoveredValue17).
    ^self
! !

