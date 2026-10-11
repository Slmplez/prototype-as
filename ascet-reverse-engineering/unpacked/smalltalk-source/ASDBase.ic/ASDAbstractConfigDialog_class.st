"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004f884; bytecode file offset 0x94d048"
!ASDAbstractConfigDialog class methodsFor: 'recovered'!
controllerClass
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20070170; bytecode file offset 0x96cb7c"
!ASDAbstractConfigDialog class methodsFor: 'recovered'!
lastWindowConfiguration
    | recoveredValue0 |
    recoveredValue0 := lastWindowConfiguration.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c6728; bytecode file offset 0x9c3164"
!ASDAbstractConfigDialog class methodsFor: 'recovered'!
lastWindowConfiguration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    lastWindowConfiguration := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20135eb0; bytecode file offset 0xa32774"
!ASDAbstractConfigDialog class methodsFor: 'recovered'!
createFor: recoveredArg1 context: recoveredArg2 mainController: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) controllerClass.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue2) createFor: (recoveredValue3) context: (recoveredValue4) mainController: (recoveredValue5) forUI: (self).
    (recoveredValue1) uiController: (recoveredValue6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20148cec; bytecode file offset 0xa455b0"
!ASDAbstractConfigDialog class methodsFor: 'recovered'!
createFor: recoveredArg1 context: recoveredArg2 mainController: recoveredArg3 element: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) controllerClass.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := (recoveredValue2) createFor: (recoveredValue3) element: (recoveredValue4) context: (recoveredValue5) mainController: (recoveredValue6) forUI: (self).
    (recoveredValue1) uiController: (recoveredValue7).
    ^recoveredValue0
! !

"ASDBase.ic method 0x201d6698; bytecode file offset 0xad2f60"
!ASDAbstractConfigDialog class methodsFor: 'recovered'!
initializeClass
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (300) @ (300).
    minSize := recoveredValue0.
    recoveredValue1 := CgScreen.
    recoveredValue2 := (recoveredValue1) default.
    recoveredValue3 := (recoveredValue2) width.
    recoveredValue4 := CgScreen.
    recoveredValue5 := (recoveredValue4) default.
    recoveredValue6 := (recoveredValue5) height.
    recoveredValue7 := (recoveredValue3) @ (recoveredValue6).
    maxSize := recoveredValue7.
    ^self
! !

