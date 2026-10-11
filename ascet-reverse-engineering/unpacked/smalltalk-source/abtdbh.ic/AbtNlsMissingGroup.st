"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdbh.ic method 0x20000110; bytecode file offset 0x11c60"
!AbtNlsMissingGroup methodsFor: 'recovered'!
messageAnnotationFormat: recoveredArg1
    ^self
! !

"abtdbh.ic method 0x20000178; bytecode file offset 0x11c60"
!AbtNlsMissingGroup methodsFor: 'recovered'!
do: recoveredArg1
    ^self
! !

"abtdbh.ic method 0x2000028c; bytecode file offset 0x11d6c"
!AbtNlsMissingGroup methodsFor: 'recovered'!
mriExists: recoveredArg1
    ^false
! !

"abtdbh.ic method 0x200004a4; bytecode file offset 0x11f7c"
!AbtNlsMissingGroup methodsFor: 'recovered'!
effectiveIndex: recoveredArg1
    ^0
! !

"abtdbh.ic method 0x2000090c; bytecode file offset 0x123fc"
!AbtNlsMissingGroup methodsFor: 'recovered'!
replacementRules
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtNLSCoordinator.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := (recoveredValue1) defaultReplacementRules.
    ^recoveredValue2
! !

"abtdbh.ic method 0x200009fc; bytecode file offset 0x124ec"
!AbtNlsMissingGroup methodsFor: 'recovered'!
messageAnnotationFormat
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) groupName.
    recoveredValue1 := (recoveredValue0) , ('.Missing.%n.%e').
    ^recoveredValue1
! !

"abtdbh.ic method 0x200024e4; bytecode file offset 0x13fd0"
!AbtNlsMissingGroup methodsFor: 'recovered'!
log
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) groupName.
    recoveredValue1 := (recoveredValue0) printString.
    recoveredValue2 := ('NLS Error (VA).  Missing group named: %1.  Check that your MPR files exist and are properly registered.') bindWith: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := EsWeakIdentitySet.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) cr.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue3) nextPutAll: (recoveredValue5).
    ^self
! !

