"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x200008b8; bytecode file offset 0x3cba0"
!EmShadowMetaclass methodsFor: 'recovered'!
definitionString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryInstance.
    recoveredValue1 := (recoveredValue0) definitionString.
    ^recoveredValue1
! !

"lib.ic method 0x20001944; bytecode file offset 0x3da5c"
!EmShadowMetaclass methodsFor: 'recovered'!
editionStampFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) primaryInstance.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) editionStampFrom: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x20001954; bytecode file offset 0x3da5c"
!EmShadowMetaclass methodsFor: 'recovered'!
timeStampIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) primaryInstance.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) timeStampIn: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x2000220c; bytecode file offset 0x3e244"
!EmShadowMetaclass methodsFor: 'recovered'!
readMethods
    | recoveredValue0 |
    recoveredValue0 := (self) primaryInstance.
    (recoveredValue0) readMethods.
    ^self
! !

"lib.ic method 0x20002a7c; bytecode file offset 0x3eaac"
!EmShadowMetaclass methodsFor: 'recovered'!
isLoaded
    ^false
! !

"lib.ic method 0x20003a64; bytecode file offset 0x3facc"
!EmShadowMetaclass methodsFor: 'recovered'!
initializeMethodDictionary
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    (self) setMethodDictionary: (recoveredValue1).
    ^self
! !

"lib.ic method 0x20004484; bytecode file offset 0x40514"
!EmShadowMetaclass methodsFor: 'recovered'!
methodCategories
    | recoveredValue0 |
    (self) readMethods.
    recoveredValue0 := super methodCategories.
    ^recoveredValue0
! !

"lib.ic method 0x200044c0; bytecode file offset 0x40514"
!EmShadowMetaclass methodsFor: 'recovered'!
methodDictionary
    | recoveredValue0 |
    (self) readMethods.
    recoveredValue0 := super methodDictionary.
    ^recoveredValue0
! !

"lib.ic method 0x20004924; bytecode file offset 0x4095c"
!EmShadowMetaclass methodsFor: 'recovered'!
setMethodDictionary: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    methodDictionary := recoveredValue0.
    ^self
! !

"lib.ic method 0x200051dc; bytecode file offset 0x41208"
!EmShadowMetaclass methodsFor: 'recovered'!
methodNamesIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    (self) readMethods.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super methodNamesIn: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x20019c00; bytecode file offset 0x55c40"
!EmShadowMetaclass methodsFor: 'recovered'!
copyMethodsFrom: recoveredArg1 named: recoveredArg2 in: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg2.
    (self) methodNamesIn: (recoveredValue0) are: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) methodDictionary.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 recoveredBlock22Value4 recoveredBlock22Value5 recoveredBlock22Value6 recoveredBlock22Value7 recoveredBlock22Value8 recoveredBlock22Value9 |
    recoveredBlock22Value0 := recoveredBlock22Arg1.
    recoveredBlock22Value1 := recoveredLocal1.
    recoveredBlock22Value2 := recoveredBlock22Arg1.
    recoveredBlock22Value3 := [
    | recoveredBlock22Block37Value0 recoveredBlock22Block37Value1 recoveredBlock22Block37Value2 recoveredBlock22Block37Value3 |
    recoveredBlock22Block37Value0 := EmShadowCompiledMethod.
    recoveredBlock22Block37Value1 := recoveredBlock22Arg1.
    recoveredBlock22Block37Value2 := recoveredArg3.
    recoveredBlock22Block37Value3 := (recoveredBlock22Block37Value0) named: (recoveredBlock22Block37Value1) for: (self) in: (recoveredBlock22Block37Value2).
    recoveredBlock22Block37Value3
].
    recoveredBlock22Value4 := (recoveredBlock22Value1) at: (recoveredBlock22Value2) ifAbsent: (recoveredBlock22Value3).
    recoveredBlock22Value5 := recoveredArg1.
    recoveredBlock22Value6 := recoveredBlock22Arg1.
    recoveredBlock22Value7 := (recoveredBlock22Value5) categoriesFor: (recoveredBlock22Value6).
    recoveredBlock22Value8 := recoveredArg3.
    recoveredBlock22Value9 := (self) addSelector: (recoveredBlock22Value0) withMethod: (recoveredBlock22Value4) categories: (recoveredBlock22Value7) application: (recoveredBlock22Value8).
    recoveredBlock22Value9
].
    (recoveredValue4) do: (recoveredValue5).
    ^self
! !

