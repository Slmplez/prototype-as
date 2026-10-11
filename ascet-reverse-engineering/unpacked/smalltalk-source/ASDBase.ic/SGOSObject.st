"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000818c; bytecode file offset 0x908be4"
!SGOSObject methodsFor: 'recovered'!
label
    | recoveredValue0 |
    recoveredValue0 := (self) name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009a34; bytecode file offset 0x908be4"
!SGOSObject methodsFor: 'recovered'!
errLabel
    | recoveredValue0 |
    recoveredValue0 := (self) name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003e078; bytecode file offset 0x93bf94"
!SGOSObject methodsFor: 'recovered'!
logicManager
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGLmElement.
    recoveredValue1 := (recoveredValue0) logicManager.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200666e4; bytecode file offset 0x963428"
!SGOSObject methodsFor: 'recovered'!
id
    | recoveredValue0 |
    recoveredValue0 := id.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067a9c; bytecode file offset 0x9646f8"
!SGOSObject methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20095478; bytecode file offset 0x991fb4"
!SGOSObject methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) name.
    (recoveredValue0) nextPutAll: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009cf7c; bytecode file offset 0x99988c"
!SGOSObject methodsFor: 'recovered'!
idString
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := id.
    recoveredValue1 := (recoveredValue0) asString.
    recoveredValue2 := (recoveredValue1) , (' - ').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200be35c; bytecode file offset 0x9bb178"
!SGOSObject methodsFor: 'recovered'!
id: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    id := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf668; bytecode file offset 0x9bc0b4"
!SGOSObject methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e4c34; bytecode file offset 0x9e14fc"
!SGOSObject methodsFor: 'recovered'!
duplicate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) name.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (self) id.
    (recoveredValue3) id: (recoveredValue4).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200fa910; bytecode file offset 0x9f71d0"
!SGOSObject methodsFor: 'recovered'!
initialize
    super initialize.
    (self) id: (0).
    ^self
! !

