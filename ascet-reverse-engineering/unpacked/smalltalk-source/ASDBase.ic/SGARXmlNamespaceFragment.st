"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20068504; bytecode file offset 0x965b90"
!SGARXmlNamespaceFragment methodsFor: 'recovered'!
children
    | recoveredValue0 |
    recoveredValue0 := children.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b608; bytecode file offset 0x96873c"
!SGARXmlNamespaceFragment methodsFor: 'recovered'!
namespace
    | recoveredValue0 |
    recoveredValue0 := namespace.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c834; bytecode file offset 0x9692b0"
!SGARXmlNamespaceFragment methodsFor: 'recovered'!
fileCategory
    | recoveredValue0 |
    recoveredValue0 := fileCategory.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c2b18; bytecode file offset 0x9bf474"
!SGARXmlNamespaceFragment methodsFor: 'recovered'!
namespace: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    namespace := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3094; bytecode file offset 0x9bfde0"
!SGARXmlNamespaceFragment methodsFor: 'recovered'!
fileCategory: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fileCategory := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f9f3c; bytecode file offset 0x9f6878"
!SGARXmlNamespaceFragment methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    children := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2032c6f8; bytecode file offset 0xc28fd4"
!SGARXmlNamespaceFragment methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('Fragment: ').
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := (self) name.
    (recoveredValue2) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) cr.
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) nextPutAll: ('Namespace: ').
    recoveredValue6 := (self) namespace.
    (recoveredValue0) nextPutAll: (recoveredValue6).
    recoveredValue7 := (self) children.
    recoveredValue8 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 |
    recoveredBlock32Value0 := recoveredBlock32Arg1.
    recoveredBlock32Value1 := [:recoveredBlock32Block39Arg1 | 
    | recoveredBlock32Block39Value0 recoveredBlock32Block39Value1 recoveredBlock32Block39Value2 |
    recoveredBlock32Block39Value0 := recoveredBlock32Block39Arg1.
    recoveredBlock32Block39Value1 := recoveredArg1.
    recoveredBlock32Block39Value2 := (recoveredBlock32Block39Value0) printOn: (recoveredBlock32Block39Value1).
    recoveredBlock32Block39Value2
].
    recoveredBlock32Value2 := (recoveredBlock32Value0) do: (recoveredBlock32Value1).
    recoveredBlock32Value2
].
    (recoveredValue7) ifNotNil: (recoveredValue8).
    ^self
! !

