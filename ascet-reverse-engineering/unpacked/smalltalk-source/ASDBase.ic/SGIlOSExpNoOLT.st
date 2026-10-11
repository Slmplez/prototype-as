"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006224; bytecode file offset 0x902de8"
!SGIlOSExpNoOLT methodsFor: 'recovered'!
resourceInit: recoveredArg1 type: recoveredArg2 value: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x20006570; bytecode file offset 0x902ecc"
!SGIlOSExpNoOLT methodsFor: 'recovered'!
resourceDecl: recoveredArg1 type: recoveredArg2 value: recoveredArg3 attributes: recoveredArg4
    ^self
! !

"ASDBase.ic method 0x2004e36c; bytecode file offset 0x94d048"
!SGIlOSExpNoOLT methodsFor: 'recovered'!
funcDeclSetDT
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200505a4; bytecode file offset 0x94d048"
!SGIlOSExpNoOLT methodsFor: 'recovered'!
funcDeclSetDTIntecrio
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2010b208; bytecode file offset 0xa07aec"
!SGIlOSExpNoOLT methodsFor: 'recovered'!
interruptsResumeExpr
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) componentAttributes.
    (recoveredValue1) cgOptRequiresOSInterface.
    recoveredValue2 := (self) owner.
    (recoveredValue2) pushExpr: ('RESUME_INTERRUPTS').
    ^self
! !

"ASDBase.ic method 0x2010b224; bytecode file offset 0xa07aec"
!SGIlOSExpNoOLT methodsFor: 'recovered'!
interruptsSuspendExpr
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) componentAttributes.
    (recoveredValue1) cgOptRequiresOSInterface.
    recoveredValue2 := (self) owner.
    (recoveredValue2) pushExpr: ('SUSPEND_HS_INTERRUPTS').
    ^self
! !

"ASDBase.ic method 0x2010b250; bytecode file offset 0xa07b3c"
!SGIlOSExpNoOLT methodsFor: 'recovered'!
interruptsSuspend
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) componentAttributes.
    (recoveredValue1) cgOptRequiresOSInterface.
    recoveredValue2 := (self) block.
    (recoveredValue2) newlinePutAll: ('SUSPEND_HS_INTERRUPTS').
    ^self
! !

"ASDBase.ic method 0x2010b270; bytecode file offset 0xa07b3c"
!SGIlOSExpNoOLT methodsFor: 'recovered'!
interruptsResume
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) componentAttributes.
    (recoveredValue1) cgOptRequiresOSInterface.
    recoveredValue2 := (self) block.
    (recoveredValue2) newlinePutAll: ('RESUME_INTERRUPTS').
    ^self
! !

"ASDBase.ic method 0x2010f304; bytecode file offset 0xa0bbc8"
!SGIlOSExpNoOLT methodsFor: 'recovered'!
operatingSystem: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) body.
    (recoveredValue1) addGenerationInfoOn: (recoveredValue2).
    recoveredValue3 := (self) body.
    (recoveredValue0) addProjectOptionsOn: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2012419c; bytecode file offset 0xa20a58"
!SGIlOSExpNoOLT methodsFor: 'recovered'!
eventHandler: recoveredArg1 id: recoveredArg2 event: recoveredArg3 prio: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    (self) hwTask: (recoveredValue0) id: (recoveredValue1) event: (recoveredValue2) prio: (recoveredValue3) procs: (0) opModes: (#()).
    ^self
! !

"ASDBase.ic method 0x20136a24; bytecode file offset 0xa332dc"
!SGIlOSExpNoOLT methodsFor: 'recovered'!
hwTask: recoveredArg1 id: recoveredArg2 event: recoveredArg3 prio: recoveredArg4 procs: recoveredArg5 opModes: recoveredArg6 minPeriod: recoveredArg7 isrAddress: recoveredArg8
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    recoveredValue5 := recoveredArg6.
    recoveredValue6 := (self) hwTask: (recoveredValue0) id: (recoveredValue1) event: (recoveredValue2) prio: (recoveredValue3) procs: (recoveredValue4) opModes: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20157758; bytecode file offset 0xa54020"
!SGIlOSExpNoOLT methodsFor: 'recovered'!
processDecl: recoveredArg1 genName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) owner.
    recoveredValue4 := (recoveredValue3) ileVoid.
    recoveredValue5 := (self) owner.
    recoveredValue6 := (recoveredValue5) declHeader.
    (recoveredValue0) functionDecl: (recoveredValue1) genName: (recoveredValue2) arguments: (#()) return: (recoveredValue4) declOn: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x203b78e4; bytecode file offset 0xcb41d0"
!SGIlOSExpNoOLT methodsFor: 'recovered'!
hwTask: recoveredArg1 id: recoveredArg2 event: recoveredArg3 prio: recoveredArg4 procs: recoveredArg5 opModes: recoveredArg6
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) asCValue.
    recoveredValue2 := ('tabHwTask') , (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) block.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) newlinePutAll: ('T_processPtrTab ').
    recoveredValue5 := recoveredValue3.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) nextPutAll: (recoveredValue6).
    recoveredValue7 := recoveredValue3.
    (recoveredValue7) nextPutAll: (' = { ').
    recoveredValue8 := recoveredValue3.
    recoveredValue9 := recoveredArg5.
    recoveredValue10 := (self) processRefs: (recoveredValue9).
    (recoveredValue8) nextPutAll: (recoveredValue10).
    recoveredValue11 := recoveredValue3.
    (recoveredValue11) nextPutAll: ('_terminateHwTask };').
    recoveredValue12 := recoveredValue3.
    (recoveredValue12) newlinePutAll: ('defineHwTask (').
    recoveredValue13 := recoveredValue3.
    recoveredValue14 := recoveredArg2.
    recoveredValue15 := (recoveredValue14) asCValue.
    (recoveredValue13) nextPutAll: (recoveredValue15).
    recoveredValue16 := recoveredValue3.
    (recoveredValue16) listSeparator.
    recoveredValue17 := recoveredValue3.
    recoveredValue18 := recoveredLocal1.
    (recoveredValue17) nextPutAll: (recoveredValue18).
    recoveredValue19 := recoveredValue3.
    (recoveredValue19) listSeparator.
    recoveredValue20 := recoveredValue3.
    recoveredValue21 := recoveredArg4.
    recoveredValue22 := (recoveredValue21) asCValue.
    (recoveredValue20) nextPutAll: (recoveredValue22).
    recoveredValue23 := recoveredValue3.
    (recoveredValue23) nextPutAll: (',"').
    recoveredValue24 := recoveredValue3.
    recoveredValue25 := recoveredArg1.
    (recoveredValue24) nextPutAll: (recoveredValue25).
    (recoveredValue3) nextPutAll: ('");').
    ^self
! !

