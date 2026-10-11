"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200004b8; bytecode file offset 0x8ffcfc"
!EwTool methodsFor: 'recovered'!
extendedWidget
    ^self
! !

"ASDBase.ic method 0x200008d0; bytecode file offset 0x8ffcfc"
!EwTool methodsFor: 'recovered'!
extendedWidgetOrSelf
    ^self
! !

"ASDBase.ic method 0x2000b1b0; bytecode file offset 0x908be4"
!EwTool methodsFor: 'recovered'!
allRealChildrenPrim
    | recoveredValue0 |
    recoveredValue0 := (self) allChildren.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000bbf4; bytecode file offset 0x908be4"
!EwTool methodsFor: 'recovered'!
allRealChildren
    | recoveredValue0 |
    recoveredValue0 := (self) allRealChildrenPrim.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003e988; bytecode file offset 0x93bf94"
!EwTool methodsFor: 'recovered'!
properties
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := IdentityDictionary.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20094518; bytecode file offset 0x991174"
!EwTool methodsFor: 'recovered'!
wbPropertyAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [].
    recoveredValue2 := (self) propertyAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200947d8; bytecode file offset 0x991174"
!EwTool methodsFor: 'recovered'!
propertyAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [].
    recoveredValue2 := (self) propertyAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20099ca8; bytecode file offset 0x997194"
!EwTool methodsFor: 'recovered'!
propertyAt: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20099fd8; bytecode file offset 0x997194"
!EwTool methodsFor: 'recovered'!
wbPropertyAt: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009a488; bytecode file offset 0x997194"
!EwTool methodsFor: 'recovered'!
propertyAt: recoveredArg1 ifAbsentPut: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsentPut: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009a708; bytecode file offset 0x997194"
!EwTool methodsFor: 'recovered'!
propertyAt: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201b69a0; bytecode file offset 0xab3260"
!EwTool methodsFor: 'recovered'!
propertyAt: recoveredArg1 ifMissing: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := recoveredArg2.
    recoveredBlock8Value2 := (self) wbPropertyAt: (recoveredBlock8Value0) put: (recoveredBlock8Value1).
    recoveredBlock8Value2
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20250370; bytecode file offset 0xb4cc34"
!EwTool methodsFor: 'recovered'!
widgetNamed: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asString.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) allChildren.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := (recoveredBlock12Value0) name.
    recoveredBlock12Value2 := recoveredLocal1.
    recoveredBlock12Value3 := (recoveredBlock12Value1) = (recoveredBlock12Value2).
    recoveredBlock12Value3
].
    recoveredValue4 := [
    ^nil
].
    recoveredValue5 := (recoveredValue2) detect: (recoveredValue3) ifNone: (recoveredValue4).
    ^recoveredValue5
! !

