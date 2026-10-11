"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001be8; bytecode file offset 0x8ffcfc"
!RBTypedValue methodsFor: 'recovered'!
adjustValueToInterval
    ^self
! !

"ASDBase.ic method 0x20002b28; bytecode file offset 0x8ffcfc"
!RBTypedValue methodsFor: 'recovered'!
adjustValueToQuantization
    ^self
! !

"ASDBase.ic method 0x20004848; bytecode file offset 0x90206c"
!RBTypedValue methodsFor: 'recovered'!
setInterval: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005600; bytecode file offset 0x90206c"
!RBTypedValue methodsFor: 'recovered'!
setQuantization: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000da04; bytecode file offset 0x90a4b8"
!RBTypedValue methodsFor: 'recovered'!
adjustValue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000dbc4; bytecode file offset 0x90a4b8"
!RBTypedValue methodsFor: 'recovered'!
adjustValueToIntervalWithoutConvertion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20040210; bytecode file offset 0x93d278"
!RBTypedValue methodsFor: 'recovered'!
getInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := type.
    recoveredValue1 := (recoveredValue0) getInterval.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004021c; bytecode file offset 0x93d278"
!RBTypedValue methodsFor: 'recovered'!
getQuantization
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := type.
    recoveredValue1 := (recoveredValue0) getQuantization.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200667b4; bytecode file offset 0x963428"
!RBTypedValue methodsFor: 'recovered'!
getType
    | recoveredValue0 |
    recoveredValue0 := type.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067ae4; bytecode file offset 0x9646f8"
!RBTypedValue methodsFor: 'recovered'!
getValue
    | recoveredValue0 |
    recoveredValue0 := value.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007bad4; bytecode file offset 0x97c330"
!RBTypedValue methodsFor: 'recovered'!
hasInterval
    ^false
! !

"ASDBase.ic method 0x200b20f8; bytecode file offset 0x9aea94"
!RBTypedValue methodsFor: 'recovered'!
asap2ExtendedLimits
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Kk') == ('Call_64858').
    recoveredValue1 := (self) getInterval.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b88ec; bytecode file offset 0x9b51a8"
!RBTypedValue methodsFor: 'recovered'!
setValue: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := type.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) convert: (recoveredValue1).
    (self) setValueNoCheck: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ba888; bytecode file offset 0x9b7170"
!RBTypedValue methodsFor: 'recovered'!
setType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    type := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) getDefaultValue.
    value := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200ba8b8; bytecode file offset 0x9b7170"
!RBTypedValue methodsFor: 'recovered'!
initializeForType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    type := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) getDefaultValue.
    value := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200bf270; bytecode file offset 0x9bc0b4"
!RBTypedValue methodsFor: 'recovered'!
setValueNoCheck: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    value := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d3414; bytecode file offset 0x9cfcd0"
!RBTypedValue methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    value := true.
    recoveredValue0 := RBBoolean.
    recoveredValue1 := (recoveredValue0) createDefault.
    type := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200d3c60; bytecode file offset 0x9d0524"
!RBTypedValue methodsFor: 'recovered'!
copyImplementation
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) class.
    recoveredValue1 := type.
    recoveredValue2 := (recoveredValue1) deepCopy.
    recoveredValue3 := (recoveredValue0) createForType: (recoveredValue2).
    recoveredValue4 := value.
    recoveredValue5 := (recoveredValue3) setValue: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200dcb48; bytecode file offset 0x9d9400"
!RBTypedValue methodsFor: 'recovered'!
initializeForValueClass: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) createDefaultForType: (recoveredValue1).
    value := recoveredValue2.
    recoveredValue3 := recoveredArg2.
    type := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x200e3c14; bytecode file offset 0x9e04d8"
!RBTypedValue methodsFor: 'recovered'!
deepCopy
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) class.
    recoveredValue1 := type.
    recoveredValue2 := (recoveredValue1) deepCopy.
    recoveredValue3 := (recoveredValue0) createForType: (recoveredValue2).
    recoveredValue4 := value.
    recoveredValue5 := (recoveredValue4) deepCopy.
    recoveredValue6 := (recoveredValue3) setValue: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x200e9d0c; bytecode file offset 0x9e65c8"
!RBTypedValue methodsFor: 'recovered'!
initializeForValueClass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) createDefault.
    value := recoveredValue1.
    recoveredValue2 := RBFloat.
    recoveredValue3 := (recoveredValue2) createDefault.
    type := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x20159f24; bytecode file offset 0xa567e0"
!RBTypedValue methodsFor: 'recovered'!
emWriteObjectOn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := value.
    recoveredLocal1 := recoveredValue0.
    value := nil.
    recoveredValue1 := recoveredArg1.
    super emWriteObjectOn: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    value := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x2015b870; bytecode file offset 0xa5812c"
!RBTypedValue methodsFor: 'recovered'!
dumpSize
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := value.
    recoveredLocal1 := recoveredValue0.
    value := nil.
    recoveredValue1 := super dumpSize.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    value := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20201444; bytecode file offset 0xafdd0c"
!RBTypedValue methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) name.
    (recoveredValue1) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) cr.
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := value.
    recoveredValue7 := (recoveredValue6) printString.
    (recoveredValue5) nextPutAll: (recoveredValue7).
    recoveredValue8 := recoveredValue0.
    (recoveredValue8) cr.
    recoveredValue9 := type.
    recoveredValue10 := (recoveredValue9) printString.
    (recoveredValue0) nextPutAll: (recoveredValue10).
    ^self
! !

