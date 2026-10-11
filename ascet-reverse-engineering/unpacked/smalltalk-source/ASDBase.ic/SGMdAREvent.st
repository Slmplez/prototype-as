"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20008dd4; bytecode file offset 0x908be4"
!SGMdAREvent methodsFor: 'recovered'!
errLabel
    | recoveredValue0 |
    recoveredValue0 := (self) mdlLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20035184; bytecode file offset 0x934580"
!SGMdAREvent methodsFor: 'recovered'!
arEventType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) arEventType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037a84; bytecode file offset 0x934580"
!SGMdAREvent methodsFor: 'recovered'!
uuid
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlName.
    recoveredValue1 := (recoveredValue0) uuid.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005499c; bytecode file offset 0x952a9c"
!SGMdAREvent methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlAREvent: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200698d0; bytecode file offset 0x966bdc"
!SGMdAREvent methodsFor: 'recovered'!
runnableRef
    | recoveredValue0 |
    recoveredValue0 := runnableRef.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006aa94; bytecode file offset 0x967a18"
!SGMdAREvent methodsFor: 'recovered'!
mdlName
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b898; bytecode file offset 0x96873c"
!SGMdAREvent methodsFor: 'recovered'!
modeDependencyList
    | recoveredValue0 |
    recoveredValue0 := modeDependencyList.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c2b4; bytecode file offset 0x9692b0"
!SGMdAREvent methodsFor: 'recovered'!
scope
    | recoveredValue0 |
    recoveredValue0 := scope.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20076f3c; bytecode file offset 0x9757c8"
!SGMdAREvent methodsFor: 'recovered'!
isMdlAREvent
    ^true
! !

"ASDBase.ic method 0x200ba948; bytecode file offset 0x9b7200"
!SGMdAREvent methodsFor: 'recovered'!
runnableRef: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    runnableRef := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) arEvent: (self).
    ^self
! !

"ASDBase.ic method 0x200c1eac; bytecode file offset 0x9beac8"
!SGMdAREvent methodsFor: 'recovered'!
mdlName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2558; bytecode file offset 0x9bf474"
!SGMdAREvent methodsFor: 'recovered'!
modeDependencyList: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    modeDependencyList := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2e7c; bytecode file offset 0x9bfde0"
!SGMdAREvent methodsFor: 'recovered'!
scope: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    scope := recoveredValue0.
    ^self
! !

