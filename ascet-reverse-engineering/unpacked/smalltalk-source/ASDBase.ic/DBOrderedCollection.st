"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20041564; bytecode file offset 0x93e1a0"
!DBOrderedCollection methodsFor: 'recovered'!
asDBProxy
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := dbObject.
    recoveredValue1 := (recoveredValue0) asDBProxy.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20050418; bytecode file offset 0x94d048"
!DBOrderedCollection methodsFor: 'recovered'!
initialize
    (self) initializeRBDBObject.
    ^self
! !

"ASDBase.ic method 0x20069c28; bytecode file offset 0x966bdc"
!DBOrderedCollection methodsFor: 'recovered'!
dbObject
    | recoveredValue0 |
    recoveredValue0 := dbObject.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20077b64; bytecode file offset 0x9757c8"
!DBOrderedCollection methodsFor: 'recovered'!
isDbObject
    ^true
! !

"ASDBase.ic method 0x200788b4; bytecode file offset 0x9757c8"
!DBOrderedCollection methodsFor: 'recovered'!
isSelfDumpAndLoad
    ^true
! !

"ASDBase.ic method 0x200c1330; bytecode file offset 0x9bdf14"
!DBOrderedCollection methodsFor: 'recovered'!
dbObject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dbObject := recoveredValue0.
    ^self
! !

