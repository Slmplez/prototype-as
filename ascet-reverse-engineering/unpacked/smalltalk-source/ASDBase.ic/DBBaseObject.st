"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200024f8; bytecode file offset 0x8ffcfc"
!DBBaseObject methodsFor: 'recovered'!
initialize
    ^self
! !

"ASDBase.ic method 0x2000e250; bytecode file offset 0x90ab8c"
!DBBaseObject methodsFor: 'recovered'!
edit: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) edit.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20029374; bytecode file offset 0x934580"
!DBBaseObject methodsFor: 'recovered'!
delete
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := (recoveredValue0) delete.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002a494; bytecode file offset 0x934580"
!DBBaseObject methodsFor: 'recovered'!
existsOrCached
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := (recoveredValue0) existsOrCached.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040030; bytecode file offset 0x93d278"
!DBBaseObject methodsFor: 'recovered'!
isAttributeObject
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := dbObject.
    recoveredValue1 := (recoveredValue0) isDBAttributeProxy.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040444; bytecode file offset 0x93d278"
!DBBaseObject methodsFor: 'recovered'!
asDBProxy
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := dbObject.
    recoveredValue1 := (recoveredValue0) asDBProxy.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005d168; bytecode file offset 0x959a20"
!DBBaseObject methodsFor: 'recovered'!
modified
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := dbObject.
    recoveredValue1 := (recoveredValue0) modified: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006620c; bytecode file offset 0x963428"
!DBBaseObject methodsFor: 'recovered'!
dbObject
    | recoveredValue0 |
    recoveredValue0 := dbObject.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067414; bytecode file offset 0x9646f8"
!DBBaseObject methodsFor: 'recovered'!
object
    | recoveredValue0 |
    recoveredValue0 := object.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20078a0c; bytecode file offset 0x9757c8"
!DBBaseObject methodsFor: 'recovered'!
isDbObject
    ^true
! !

"ASDBase.ic method 0x2007e40c; bytecode file offset 0x97c330"
!DBBaseObject methodsFor: 'recovered'!
isLiteral
    ^false
! !

"ASDBase.ic method 0x200bdbac; bytecode file offset 0x9bb178"
!DBBaseObject methodsFor: 'recovered'!
dbObject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dbObject := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf698; bytecode file offset 0x9bc0b4"
!DBBaseObject methodsFor: 'recovered'!
object: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    object := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d767c; bytecode file offset 0x9d3f3c"
!DBBaseObject methodsFor: 'recovered'!
doesNotUnderstand: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := object.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) selector.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) arguments.
    recoveredValue5 := (recoveredValue0) perform: (recoveredValue2) withArguments: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2012b4b4; bytecode file offset 0xa27d7c"
!DBBaseObject methodsFor: 'recovered'!
classNameString
    | recoveredValue0 |
    recoveredValue0 := ('hw') == ('call_92380').
    (self) runtimeAssert: (false) additionalInfo: ('why are other objects than general dbObjects involved in search routine?').
    ^''
! !

"ASDBase.ic method 0x2020e3ec; bytecode file offset 0xb0acb4"
!DBBaseObject methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) cr.
    recoveredValue2 := dbObject.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) printOn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) cr.
    recoveredValue5 := recoveredArg1.
    (recoveredValue5) nextPutAll: ('Value: ').
    recoveredValue6 := object.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) printOn: (recoveredValue7).
    ^self
! !

