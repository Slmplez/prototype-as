"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000980; bytecode file offset 0x61a44"
!SstWSDeploymentDescriptorSerializer methodsFor: 'recovered'!
supportsContext: recoveredArg1
    ^false
! !

"xxx_dyn.ic method 0x2000f708; bytecode file offset 0x707d8"
!SstWSDeploymentDescriptorSerializer methodsFor: 'recovered'!
abtXmlPrint: recoveredArg1 on: recoveredArg2 tagName: recoveredArg3 type: recoveredArg4 context: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg5.
    (self) printCommentsFor: (recoveredValue0) on: (recoveredValue1) context: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := recoveredArg5.
    super abtXmlPrint: (recoveredValue3) on: (recoveredValue4) tagName: (recoveredValue5) type: (recoveredValue6) context: (recoveredValue7).
    ^self
! !

"xxx_dyn.ic method 0x20013878; bytecode file offset 0x74954"
!SstWSDeploymentDescriptorSerializer methodsFor: 'recovered'!
commentFor: recoveredArg1 context: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) configuration.
    recoveredValue2 := (recoveredValue1) propertyNamed: ('Comments').
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := recoveredArg1.
    recoveredBlock11Value2 := [].
    recoveredBlock11Value3 := (recoveredBlock11Value0) at: (recoveredBlock11Value1) ifAbsent: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    recoveredValue4 := (recoveredValue2) ifNotNil: (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x20013fa0; bytecode file offset 0x75074"
!SstWSDeploymentDescriptorSerializer methodsFor: 'recovered'!
printCommentsFor: recoveredArg1 on: recoveredArg2 context: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (self) commentFor: (recoveredValue0) context: (recoveredValue1).
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := recoveredArg2.
    recoveredBlock12Value1 := recoveredBlock12Value0.
    (recoveredBlock12Value1) cr.
    recoveredBlock12Value2 := recoveredBlock12Arg1.
    recoveredBlock12Value3 := (recoveredBlock12Value0) writeComment: (recoveredBlock12Value2).
    recoveredBlock12Value3
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    ^self
! !

