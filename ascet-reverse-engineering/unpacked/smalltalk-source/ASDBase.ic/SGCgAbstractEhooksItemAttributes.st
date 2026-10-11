"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200692bc; bytecode file offset 0x965b90"
!SGCgAbstractEhooksItemAttributes methodsFor: 'recovered'!
attrTable
    | recoveredValue0 |
    recoveredValue0 := attrTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20083654; bytecode file offset 0x97ff54"
!SGCgAbstractEhooksItemAttributes methodsFor: 'recovered'!
getBoolAttribute: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getAttribute: (recoveredValue0) default: (false).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200836d8; bytecode file offset 0x980230"
!SGCgAbstractEhooksItemAttributes methodsFor: 'recovered'!
getAttribute: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getAttribute: (recoveredValue0) default: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20094538; bytecode file offset 0x991174"
!SGCgAbstractEhooksItemAttributes methodsFor: 'recovered'!
getStringAttribute: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getAttribute: (recoveredValue0) default: ('').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ae698; bytecode file offset 0x9ab034"
!SGCgAbstractEhooksItemAttributes methodsFor: 'recovered'!
setAttribute: recoveredArg1 value: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attrTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200f9f0c; bytecode file offset 0x9f6878"
!SGCgAbstractEhooksItemAttributes methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    attrTable := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20169518; bytecode file offset 0xa65e04"
!SGCgAbstractEhooksItemAttributes methodsFor: 'recovered'!
getAttribute: recoveredArg1 default: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) attrTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 |
    recoveredBlock8Value0 := recoveredArg2.
    recoveredBlock8Value0
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

