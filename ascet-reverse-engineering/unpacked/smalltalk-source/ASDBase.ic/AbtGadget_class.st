"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20020b28; bytecode file offset 0x92209c"
!AbtGadget class methodsFor: 'recovered'!
IS_closeWidget
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('closeWidget'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200e0c08; bytecode file offset 0x9dd578"
!AbtGadget class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (self) IS_closeWidget.
    recoveredValue3 := (recoveredValue1) featureNamed: ('closeWidget') put: (recoveredValue2).
    ^recoveredValue3
! !

