"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDGenUtil_base.ic method 0x2000202c; bytecode file offset 0x101ec"
!EtasUserInterfaceAPI methodsFor: 'recovered'!
perforMenuEntry: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) view.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    (recoveredValue1) bringToFront.
    recoveredValue2 := CwAppContext.
    recoveredValue3 := (recoveredValue2) default.
    recoveredValue4 := [
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 recoveredBlock16Value4 recoveredBlock16Value5 recoveredBlock16Value6 |
    recoveredBlock16Value0 := PCDExecuterMenuItem.
    recoveredBlock16Value1 := (recoveredBlock16Value0) create.
    recoveredBlock16Value2 := recoveredBlock16Value1.
    recoveredBlock16Value3 := recoveredArg1.
    (recoveredBlock16Value2) parse: (recoveredBlock16Value3).
    recoveredBlock16Value4 := recoveredLocal1.
    recoveredBlock16Value5 := (recoveredBlock16Value1) executeInScope: (recoveredBlock16Value4).
    recoveredBlock16Value6 := (recoveredBlock16Value5) notNil.
    recoveredBlock16Value6
].
    recoveredValue5 := (recoveredValue3) syncExecInUI: (recoveredValue4).
    ^recoveredValue5
! !

