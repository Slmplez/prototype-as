"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20044cbc; bytecode file offset 0x9451f8"
!ASDIntecrioApiWrapperSystemProject methodsFor: 'recovered'!
active
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: ('Active').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d0ce0; bytecode file offset 0x9ce734"
!ASDIntecrioApiWrapperSystemProject methodsFor: 'recovered'!
getSoftwareSystem
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('GetSoftwareSystem') withArguments: (#('')) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d1708; bytecode file offset 0x9ce734"
!ASDIntecrioApiWrapperSystemProject methodsFor: 'recovered'!
hasHardwareSystem
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('HasHardwareSystem') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2015e768; bytecode file offset 0xa5b030"
!ASDIntecrioApiWrapperSystemProject methodsFor: 'recovered'!
hasSoftwareSystem
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kli') == ('Call_xxxxx').
    recoveredValue1 := (self) invoke: ('HasSoftwareSystem') withArguments: (#()) returnType: (true).
    recoveredValue2 := (recoveredValue1) = (true).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20206c70; bytecode file offset 0xb0353c"
!ASDIntecrioApiWrapperSystemProject methodsFor: 'recovered'!
createSoftwareSystem: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (2).
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) at: (1) put: ('').
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) at: (2) put: (recoveredValue4).
    recoveredLocal1 := recoveredValue1.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) invoke: ('CreateSoftwareSystem') withArguments: (recoveredValue5) returnType: (true).
    ^recoveredValue6
! !

