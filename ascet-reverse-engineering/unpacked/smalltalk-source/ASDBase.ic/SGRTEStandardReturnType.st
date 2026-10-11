"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000c9cc; bytecode file offset 0x909658"
!SGRTEStandardReturnType methodsFor: 'recovered'!
conformsWith: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x20018764; bytecode file offset 0x92209c"
!SGRTEStandardReturnType methodsFor: 'recovered'!
getModelType
    ^'scalar'
! !

"ASDBase.ic method 0x2001d3b4; bytecode file offset 0x92209c"
!SGRTEStandardReturnType methodsFor: 'recovered'!
getBasicModelType
    ^'rteStandardReturnType'
! !

"ASDBase.ic method 0x2001f040; bytecode file offset 0x92209c"
!SGRTEStandardReturnType methodsFor: 'recovered'!
label
    ^'Std_ReturnType'
! !

"ASDBase.ic method 0x20025100; bytecode file offset 0x92209c"
!SGRTEStandardReturnType methodsFor: 'recovered'!
iconName
    ^'ComponentsEnumeration'
! !

"ASDBase.ic method 0x2003f298; bytecode file offset 0x93bf94"
!SGRTEStandardReturnType methodsFor: 'recovered'!
defaultPhysType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBStringType.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005cb7c; bytecode file offset 0x959680"
!SGRTEStandardReturnType methodsFor: 'recovered'!
typeID
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGEnumeration.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) typeID.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20078b6c; bytecode file offset 0x9757c8"
!SGRTEStandardReturnType methodsFor: 'recovered'!
isRTEStandardReturnType
    ^true
! !

"ASDBase.ic method 0x20136ab8; bytecode file offset 0xa33378"
!SGRTEStandardReturnType methodsFor: 'recovered'!
defaultImplType
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBInterval.
    recoveredValue1 := (recoveredValue0) left: (0) right: (255).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) integerType.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20241e54; bytecode file offset 0xb3e738"
!SGRTEStandardReturnType methodsFor: 'recovered'!
createDataElement
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := RBDataEnumeration.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := RBFormulaId.
    recoveredValue5 := (recoveredValue4) create.
    (recoveredValue3) formula: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := (self) defaultPhysType.
    (recoveredValue6) setPhysType: (recoveredValue7).
    recoveredValue8 := (self) defaultImplType.
    (recoveredValue2) setImplType: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) description.
    recoveredValue11 := (self) dataElementEditType.
    (recoveredValue10) typ: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

