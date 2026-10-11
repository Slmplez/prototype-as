"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000130; bytecode file offset 0x6147c"
!SstWSManager methodsFor: 'recovered'!
startUp
    ^self
! !

"xxx_dyn.ic method 0x200002e0; bytecode file offset 0x6147c"
!SstWSManager methodsFor: 'recovered'!
shutDown
    ^self
! !

"xxx_dyn.ic method 0x20000388; bytecode file offset 0x6147c"
!SstWSManager methodsFor: 'recovered'!
clear
    ^self
! !

"xxx_dyn.ic method 0x20000420; bytecode file offset 0x615ac"
!SstWSManager methodsFor: 'recovered'!
deploy: recoveredArg1
    ^self
! !

"xxx_dyn.ic method 0x200004b0; bytecode file offset 0x615ac"
!SstWSManager methodsFor: 'recovered'!
undeploy: recoveredArg1
    ^self
! !

"xxx_dyn.ic method 0x20001a8c; bytecode file offset 0x62c08"
!SstWSManager methodsFor: 'recovered'!
isStarted
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) container.
    recoveredValue1 := (recoveredValue0) isStarted.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200029b8; bytecode file offset 0x63b1c"
!SstWSManager methodsFor: 'recovered'!
initialize
    (self) resetManagedObjects.
    ^self
! !

"xxx_dyn.ic method 0x20002d1c; bytecode file offset 0x64108"
!SstWSManager methodsFor: 'recovered'!
manage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) managedObjects.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) add: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20002ebc; bytecode file offset 0x64108"
!SstWSManager methodsFor: 'recovered'!
namespace: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) managedObjects.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) namespace: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20002f6c; bytecode file offset 0x64108"
!SstWSManager methodsFor: 'recovered'!
allObjectsInNamespace: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) managedObjects.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) allObjectsInNamespace: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20002f7c; bytecode file offset 0x64108"
!SstWSManager methodsFor: 'recovered'!
unmanage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) managedObjects.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) remove: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x200038bc; bytecode file offset 0x649e8"
!SstWSManager methodsFor: 'recovered'!
container
    | recoveredValue0 |
    recoveredValue0 := container.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003a40; bytecode file offset 0x64bac"
!SstWSManager methodsFor: 'recovered'!
managedObjects
    | recoveredValue0 |
    recoveredValue0 := managedObjects.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004b20; bytecode file offset 0x65c7c"
!SstWSManager methodsFor: 'recovered'!
fatalDeploymentError: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ExWSFatalDeploymentError.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) signalWith: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20004b70; bytecode file offset 0x65c7c"
!SstWSManager methodsFor: 'recovered'!
nonFatalDeploymentError: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ExWSNonFatalDeploymentError.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) signalWith: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20006334; bytecode file offset 0x67530"
!SstWSManager methodsFor: 'recovered'!
unmanage: recoveredArg1 inNamespace: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) managedObjects.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) remove: (recoveredValue1) inNamespace: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20006364; bytecode file offset 0x67530"
!SstWSManager methodsFor: 'recovered'!
manage: recoveredArg1 inNamespace: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) managedObjects.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) add: (recoveredValue1) inNamespace: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x200063c4; bytecode file offset 0x67530"
!SstWSManager methodsFor: 'recovered'!
objectNamed: recoveredArg1 inNamespace: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) managedObjects.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) objectNamed: (recoveredValue1) inNamespace: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x200064b4; bytecode file offset 0x67580"
!SstWSManager methodsFor: 'recovered'!
unmanage: recoveredArg1 named: recoveredArg2 inNamespace: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) managedObjects.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue0) removeObjectNamed: (recoveredValue1) inNamespace: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20006624; bytecode file offset 0x67758"
!SstWSManager methodsFor: 'recovered'!
resetManagedObjects
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstNamespaceDictionary.
    recoveredValue1 := (recoveredValue0) new.
    (self) managedObjects: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20007cf4; bytecode file offset 0x68f50"
!SstWSManager methodsFor: 'recovered'!
container: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    container := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20007f30; bytecode file offset 0x69104"
!SstWSManager methodsFor: 'recovered'!
managedObjects: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    managedObjects := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008d18; bytecode file offset 0x69de4"
!SstWSManager methodsFor: 'recovered'!
manage: recoveredArg1 named: recoveredArg2 inNamespace: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) managedObjects.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) add: (recoveredValue1) named: (recoveredValue2) inNamespace: (recoveredValue3).
    ^recoveredValue4
! !

