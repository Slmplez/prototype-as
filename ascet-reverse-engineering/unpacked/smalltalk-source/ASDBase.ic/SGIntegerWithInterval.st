"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004e378; bytecode file offset 0x94d048"
!SGIntegerWithInterval methodsFor: 'recovered'!
implTypeForDataElement
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004e444; bytecode file offset 0x94d048"
!SGIntegerWithInterval methodsFor: 'recovered'!
classForPhysType
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005145c; bytecode file offset 0x94f0e0"
!SGIntegerWithInterval methodsFor: 'recovered'!
defaultImplTypeExplicit
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) classForPhysType.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := (recoveredValue1) actualType.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20068d54; bytecode file offset 0x965b90"
!SGIntegerWithInterval methodsFor: 'recovered'!
interval
    | recoveredValue0 |
    recoveredValue0 := interval.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20077c9c; bytecode file offset 0x9757c8"
!SGIntegerWithInterval methodsFor: 'recovered'!
isSGIntegerWithInterval
    ^true
! !

"ASDBase.ic method 0x2007ebdc; bytecode file offset 0x97c330"
!SGIntegerWithInterval methodsFor: 'recovered'!
isImplementationMaster
    ^false
! !

"ASDBase.ic method 0x20082f7c; bytecode file offset 0x97f888"
!SGIntegerWithInterval methodsFor: 'recovered'!
interval: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    interval := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200b2db4; bytecode file offset 0x9af6c0"
!SGIntegerWithInterval methodsFor: 'recovered'!
initModelInterval
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) defaultIntervalTypeClass.
    recoveredValue2 := (recoveredValue1) getInterval.
    (self) interval: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200d661c; bytecode file offset 0x9d3134"
!SGIntegerWithInterval methodsFor: 'recovered'!
initialize
    super initialize.
    (self) initModelInterval.
    ^self
! !

"ASDBase.ic method 0x200ee928; bytecode file offset 0x9eb1ec"
!SGIntegerWithInterval methodsFor: 'recovered'!
defaultPhysType
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) classForPhysType.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) interval.
    (recoveredValue2) adjustActualPhysTypeToInterval: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2010d8c8; bytecode file offset 0xa0a1a4"
!SGIntegerWithInterval methodsFor: 'recovered'!
initDataElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) implTypeForDataElement.
    (recoveredValue1) setImplType: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := (self) interval.
    (recoveredValue3) setPhysInterval: (recoveredValue4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x201204b0; bytecode file offset 0xa1cd7c"
!SGIntegerWithInterval methodsFor: 'recovered'!
convertAdequateData: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asInteger.
    recoveredValue2 := (self) interval.
    recoveredValue3 := (recoveredValue2) left.
    recoveredValue4 := (recoveredValue1) max: (recoveredValue3).
    recoveredValue5 := (self) interval.
    recoveredValue6 := (recoveredValue5) right.
    recoveredValue7 := (recoveredValue4) min: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2014058c; bytecode file offset 0xa3ce50"
!SGIntegerWithInterval methodsFor: 'recovered'!
createDataElement
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super createDataElement.
    recoveredValue1 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := (self) initDataElement: (recoveredBlock8Value0).
    recoveredBlock8Value1
].
    recoveredValue2 := (recoveredValue0) ifNotNil: (recoveredValue1).
    ^recoveredValue2
! !

