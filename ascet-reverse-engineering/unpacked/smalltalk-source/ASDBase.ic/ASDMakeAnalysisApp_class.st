"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x205fa940; bytecode file offset 0xef72f0"
!ASDMakeAnalysisApp class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) atMakeErr: (10) putMsg: ('Cannot generate code because of a cyclic dependency of components in sub graph %1').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) atMakeErr: (20) putMsg: ('Component name "%1" is not unique in project "%2"').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) atMakeErr: (21) putMsg: ('Class %1 has parameters, so all instances must have the same data set').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) atMakeErr: (22) putMsg: ('Interpolation scheme must be the same in all instances of "%1" for element named "%2"').
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) atMakeErr: (220) putMsg: ('%3 %1 (original value %2) not found for interpolation %4').
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) atMakeErr: (221) putMsg: ('%1 is empty for interpolation "%2"').
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) atMakeErr: (222) putMsg: ('Invalid interpolation mapping because of flag "%1"').
    recoveredValue8 := recoveredValue0.
    (recoveredValue8) atMakeErr: (223) putMsg: ('Alias interpolation "%1" is not mapped').
    recoveredValue9 := recoveredValue0.
    (recoveredValue9) atMakeErr: (23) putMsg: ('Cannot use experimental expander for controller code generation').
    recoveredValue10 := recoveredValue0.
    recoveredValue11 := SGMdSettings.
    recoveredValue12 := (recoveredValue11) codeGenImplementationControllerPathName.
    recoveredValue13 := (recoveredValue12) , (' can only be used together with an ASCET-SE target').
    (recoveredValue10) atMakeErr: (24) putMsg: (recoveredValue13).
    recoveredValue14 := recoveredValue0.
    recoveredValue15 := SGMdSettings.
    recoveredValue16 := (recoveredValue15) codeGenPhysicalControllerPathName.
    recoveredValue17 := (recoveredValue16) , (' can only be used together with the EHooks target supporting at least EHooks tool V3.0.0').
    (recoveredValue14) atMakeErr: (240) putMsg: (recoveredValue17).
    recoveredValue18 := recoveredValue0.
    (recoveredValue18) atMakeErr: (25) putMsg: ('Cannot use experimental code generation with controller target').
    recoveredValue19 := recoveredValue0.
    (recoveredValue19) atMakeErr: (26) putMsg: ('Generation of operating system configuration is required using experimental targets - please activate appropriate Build option').
    recoveredValue20 := recoveredValue0.
    (recoveredValue20) atMakeErr: (27) putMsg: ('Cannot create exported element "%2" due to multiple implementations of component "%1"').
    recoveredValue21 := recoveredValue0.
    (recoveredValue21) atMakeErr: (30) putMsg: ('Names of datasets (%1) used in current project are not unique for component "%2"').
    recoveredValue22 := recoveredValue0.
    (recoveredValue22) atMakeErr: (31) putMsg: ('Dataset and implementation must be identical for all instances of Module "%1"').
    recoveredValue23 := recoveredValue0.
    (recoveredValue23) atMakeErr: (32) putMsg: ('Missing implementation set for component "%1"').
    recoveredValue24 := recoveredValue0.
    (recoveredValue24) atMakeErr: (33) putMsg: ('Missing %1 set for element "%2" in component "%3"').
    recoveredValue25 := recoveredValue0.
    (recoveredValue25) atMakeErr: (41) putMsg: ('Module "%1" should be instantiated only once, due to single instance semantics').
    recoveredValue26 := recoveredValue0.
    (recoveredValue26) atMakeErr: (42) putMsg: ('Only one %1 can be used in an ASCET project').
    recoveredValue27 := recoveredValue0.
    (recoveredValue27) atMakeErr: (43) putMsg: ('AUTOSAR use case requires one instance of a %1 to be used in an ASCET project').
    recoveredValue28 := recoveredValue0.
    (recoveredValue28) atMakeErr: (44) putMsg: ('Cannot use "%1" code generation for AUTOSAR use case').
    recoveredValue29 := recoveredValue0.
    (recoveredValue29) atMakeErr: (50) putMsg: ('Multiple defined conversion name "%1" - used as formula as well as enumeration name').
    recoveredValue30 := recoveredValue0.
    (recoveredValue30) atMakeErr: (51) putMsg: ('"%1" instances can only be used in %2 components').
    recoveredValue31 := recoveredValue0.
    (recoveredValue31) atMakeErr: (52) putMsg: ('Instances of %1 components must not be used in %2 components').
    recoveredValue32 := recoveredValue0.
    (recoveredValue32) atMakeErr: (60) putMsg: ('Target type "%1" not unique, used in multiple declaration files: %2').
    recoveredValue33 := recoveredValue0.
    (recoveredValue33) atMakeErr: (610) putMsg: ('Target %1 does not support %2 - please change option or target').
    recoveredValue34 := recoveredValue0.
    (recoveredValue34) atMakeErr: (611) putMsg: ('Unsupported value "%3" for target %1 related option "%2" - please change option').
    recoveredValue35 := recoveredValue0.
    (recoveredValue35) atMakeErr: (61) putMsg: ('Memory segment ID "%1" not unique, used in multiple declarations').
    recoveredValue36 := recoveredValue0.
    (recoveredValue36) atMakeErr: (62) putMsg: ('Memory segment ID "%1" is reserved for internal use').
    recoveredValue37 := recoveredValue0.
    (recoveredValue37) atMakeErr: (63) putMsg: ('Memory segment ID "%1" contains invalid characters').
    recoveredValue38 := recoveredValue0.
    (recoveredValue38) atMakeErr: (64) putMsg: ('Memory segment priority "%1" is not unique').
    recoveredValue39 := recoveredValue0.
    (recoveredValue39) atMakeErr: (65) putMsg: ('Unknown Memory segment ID "%1" used to define a default memory class').
    recoveredValue40 := recoveredValue0.
    (recoveredValue40) atMakeErr: (66) putMsg: ('Memory segment label "%1" not unique').
    recoveredValue41 := recoveredValue0.
    (recoveredValue41) atMakeErr: (67) putMsg: ('Unreadable read costs for memory section <%1> -- see memorySections.xml in your target directory').
    recoveredValue42 := recoveredValue0.
    (recoveredValue42) atMakeErr: (70) putMsg: ('Invalid OS specification - task list must not be empty').
    recoveredValue43 := recoveredValue0.
    (recoveredValue43) atMakeErr: (80) putMsg: ('Component prefix "%1" is no valid ANSI C identifier; see project options').
    recoveredValue44 := recoveredValue0.
    (recoveredValue44) atMakeErr: (81) putMsg: ('Component name "%1" is no valid ANSI C identifier').
    recoveredValue45 := recoveredValue0.
    (recoveredValue45) atMakeErr: (82) putMsg: ('%1 name "%2" is reserved within AUTOSAR tool chain - please change').
    recoveredValue46 := recoveredValue0.
    (recoveredValue46) atMakeErr: (90) putMsg: ('Invalid template "%2" - %1').
    recoveredValue47 := recoveredValue0.
    (recoveredValue47) atMakeWarn: (21) putMsg: ('All instances of class %1 will share the same parameter set').
    recoveredValue48 := recoveredValue0.
    (recoveredValue48) atMakeWarn: (22) putMsg: ('%1 is empty for interpolation %2').
    recoveredValue49 := recoveredValue0.
    (recoveredValue49) atMakeWarn: (220) putMsg: ('%3 %1 (original value %2) not found for interpolation %4, but exists after replacement of make variables').
    recoveredValue50 := recoveredValue0.
    (recoveredValue50) atMakeWarn: (221) putMsg: ('Unknown interpolation ID "%1" in interpolation alias mapping file %2 - this mapping is ignored').
    recoveredValue51 := recoveredValue0.
    (recoveredValue51) atMakeWarn: (222) putMsg: ('The interpolation "%1" is not an alias, but is mapped - this mapping is ignored').
    recoveredValue52 := recoveredValue0.
    (recoveredValue52) atMakeWarn: (223) putMsg: ('The interpolation "%1" is an alias, but is the target of a mapping - this mapping is ignored').
    recoveredValue53 := recoveredValue0.
    (recoveredValue53) atMakeWarn: (224) putMsg: ('Duplicate mapping of interpolation "%1" - this mapping is ignored').
    recoveredValue54 := recoveredValue0.
    (recoveredValue54) atMakeWarn: (28) putMsg: ('ResolveSystemConstant=AtRunTime is not supported for SE targets').
    recoveredValue55 := recoveredValue0.
    (recoveredValue55) atMakeWarn: (30) putMsg: ('The batch build process is deprecated - please enable the make build process').
    recoveredValue56 := recoveredValue0.
    (recoveredValue56) atMakeWarn: (40) putMsg: ('target specific option %1="%2" not valid %3- use default: %4').
    recoveredValue57 := recoveredValue0.
    (recoveredValue57) atMakeWarn: (70) putMsg: ('Invalid OS specification - task list must not be empty').
    recoveredValue58 := SGCgErrorHandler.
    recoveredValue59 := recoveredValue58.
    (recoveredValue59) at: ('IMake1') put: ('Hint: select "%1" in project option "%2" for %3').
    recoveredValue60 := recoveredValue58.
    (recoveredValue60) at: ('IMake2') put: ('%1 command requires message usage variant option to be set to %2 instead of %3 --- will be set for code generation').
    ^self
! !

