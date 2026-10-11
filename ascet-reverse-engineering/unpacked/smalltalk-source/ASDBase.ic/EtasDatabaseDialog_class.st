"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20014a30; bytecode file offset 0x912098"
!EtasDatabaseDialog class methodsFor: 'recovered'!
controllerClass
    | recoveredValue0 |
    recoveredValue0 := EtasMainDatabaseCtrl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200700b8; bytecode file offset 0x96cb7c"
!EtasDatabaseDialog class methodsFor: 'recovered'!
lastWindowConfiguration
    | recoveredValue0 |
    recoveredValue0 := lastWindowConfiguration.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c6720; bytecode file offset 0x9c3164"
!EtasDatabaseDialog class methodsFor: 'recovered'!
lastWindowConfiguration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    lastWindowConfiguration := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200daccc; bytecode file offset 0x9d7618"
!EtasDatabaseDialog class methodsFor: 'recovered'!
createWithOptions: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) dbWidgetOptions: (recoveredValue2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200f040c; bytecode file offset 0x9ecce0"
!EtasDatabaseDialog class methodsFor: 'recovered'!
defaultWidth
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CgScreen.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) width.
    recoveredValue3 := (recoveredValue2) * (1).
    recoveredValue4 := (recoveredValue3) // (2).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f0420; bytecode file offset 0x9ecce0"
!EtasDatabaseDialog class methodsFor: 'recovered'!
defaultHeight
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CgScreen.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) height.
    recoveredValue3 := (recoveredValue2) * (1).
    recoveredValue4 := (recoveredValue3) // (2).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f99f8; bytecode file offset 0x9f62dc"
!EtasDatabaseDialog class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := EtasDatabaseWidgetOptions.
    recoveredValue3 := (recoveredValue2) createDefault.
    (recoveredValue1) dbWidgetOptions: (recoveredValue3).
    ^recoveredValue0
! !

