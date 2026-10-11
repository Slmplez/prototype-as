"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20057b38; bytecode file offset 0x956284"
!RBToolboxCall methodsFor: 'recovered'!
callFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) action.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) value: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200669a4; bytecode file offset 0x963428"
!RBToolboxCall methodsFor: 'recovered'!
toolbox
    | recoveredValue0 |
    recoveredValue0 := toolbox.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067d04; bytecode file offset 0x9646f8"
!RBToolboxCall methodsFor: 'recovered'!
caller
    | recoveredValue0 |
    recoveredValue0 := caller.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068cec; bytecode file offset 0x965b90"
!RBToolboxCall methodsFor: 'recovered'!
action
    | recoveredValue0 |
    recoveredValue0 := action.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200696f0; bytecode file offset 0x966bdc"
!RBToolboxCall methodsFor: 'recovered'!
description
    | recoveredValue0 |
    recoveredValue0 := description.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ad24; bytecode file offset 0x967a18"
!RBToolboxCall methodsFor: 'recovered'!
identifier
    | recoveredValue0 |
    recoveredValue0 := identifier.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bd96c; bytecode file offset 0x9bb178"
!RBToolboxCall methodsFor: 'recovered'!
toolbox: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    toolbox := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf248; bytecode file offset 0x9bc0b4"
!RBToolboxCall methodsFor: 'recovered'!
caller: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    caller := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c081c; bytecode file offset 0x9bd228"
!RBToolboxCall methodsFor: 'recovered'!
action: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    action := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0fb0; bytecode file offset 0x9bdf14"
!RBToolboxCall methodsFor: 'recovered'!
description: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    description := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1e9c; bytecode file offset 0x9beac8"
!RBToolboxCall methodsFor: 'recovered'!
identifier: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    identifier := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200fd20c; bytecode file offset 0x9f9ad0"
!RBToolboxCall methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPutAll: ('ToolboxCall from: ').
    recoveredValue1 := (self) caller.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) printOn: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2016dcf8; bytecode file offset 0xa6a5c0"
!RBToolboxCall methodsFor: 'recovered'!
initialize
    (self) toolbox: (nil).
    (self) caller: (nil).
    (self) action: (nil).
    (self) description: ('').
    ^self
! !

