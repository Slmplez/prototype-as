"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012ab0; bytecode file offset 0x912098"
!ASDAssertGO class methodsFor: 'recovered'!
dbClass
    | recoveredValue0 |
    recoveredValue0 := ASDAssertGODB.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016fb8; bytecode file offset 0x92209c"
!ASDAssertGO class methodsFor: 'recovered'!
goTypeString
    ^'Assert'
! !

"ASDBase.ic method 0x200efec8; bytecode file offset 0x9ec7e4"
!ASDAssertGO class methodsFor: 'recovered'!
interfacePositions
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) at: ('AssertOp') put: (#(150 350)).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2016d698; bytecode file offset 0xa69f58"
!ASDAssertGO class methodsFor: 'recovered'!
createWith: recoveredArg1 lineStyle: recoveredArg2 type: recoveredArg3 inputs: recoveredArg4 size: recoveredArg5
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    recoveredValue5 := super createWith: (recoveredValue0) lineStyle: (recoveredValue1) type: (recoveredValue2) inputs: (recoveredValue3) size: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue6) setDefaults.
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x2017a82c; bytecode file offset 0xa770f4"
!ASDAssertGO class methodsFor: 'recovered'!
createDefault
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := DefaultLineStyle.
    recoveredValue1 := (recoveredValue0) deepCopy.
    recoveredValue2 := (self) createWith: (nil) lineStyle: (recoveredValue1) type: ('OperationsAssert') inputs: (1) size: (nil).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (recoveredValue3) buildIconGO.
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20241c80; bytecode file offset 0xb3e554"
!ASDAssertGO class methodsFor: 'recovered'!
interfaceProcs
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (1).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := SGAliasMethod.
    recoveredValue4 := Array.
    recoveredValue5 := (recoveredValue4) with: ('value').
    recoveredValue6 := Array.
    recoveredValue7 := (recoveredValue6) with: (nil).
    recoveredValue8 := (recoveredValue3) createWithReturn: ('AssertOp') returnTemplate: (nil) inputArguments: (recoveredValue5) inputTemplates: (recoveredValue7).
    (recoveredValue2) at: (1) put: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

