"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006bb70; bytecode file offset 0x96873c"
!SGEsdlNamespaceNode methodsFor: 'recovered'!
identifier
    | recoveredValue0 |
    recoveredValue0 := identifier.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c4cc; bytecode file offset 0x9692b0"
!SGEsdlNamespaceNode methodsFor: 'recovered'!
types
    | recoveredValue0 |
    recoveredValue0 := types.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ce90; bytecode file offset 0x969c04"
!SGEsdlNamespaceNode methodsFor: 'recovered'!
using
    | recoveredValue0 |
    recoveredValue0 := using.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c2730; bytecode file offset 0x9bf474"
!SGEsdlNamespaceNode methodsFor: 'recovered'!
identifier: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    identifier := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2fdc; bytecode file offset 0x9bfde0"
!SGEsdlNamespaceNode methodsFor: 'recovered'!
types: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    types := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3798; bytecode file offset 0x9c058c"
!SGEsdlNamespaceNode methodsFor: 'recovered'!
using: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    using := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20155c90; bytecode file offset 0xa52554"
!SGEsdlNamespaceNode methodsFor: 'recovered'!
subnodesDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) identifier.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := (self) using.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := (self) types.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) do: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2018d7e0; bytecode file offset 0xa8a0a4"
!SGEsdlNamespaceNode methodsFor: 'recovered'!
sourceStart
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := sourceStart.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := (self) identifier.
    recoveredBlock6Value1 := (recoveredBlock6Value0) first.
    recoveredBlock6Value2 := (recoveredBlock6Value1) sourceStart.
    recoveredBlock6Value3 := recoveredBlock6Value2.
    sourceStart := recoveredBlock6Value3.
    recoveredBlock6Value2
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := sourceStart.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2018d9d8; bytecode file offset 0xa8a29c"
!SGEsdlNamespaceNode methodsFor: 'recovered'!
sourceEnd
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := sourceEnd.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := (self) identifier.
    recoveredBlock6Value1 := (recoveredBlock6Value0) first.
    recoveredBlock6Value2 := (recoveredBlock6Value1) sourceEnd.
    recoveredBlock6Value3 := recoveredBlock6Value2.
    sourceEnd := recoveredBlock6Value3.
    recoveredBlock6Value2
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := sourceEnd.
    ^recoveredValue2
! !

