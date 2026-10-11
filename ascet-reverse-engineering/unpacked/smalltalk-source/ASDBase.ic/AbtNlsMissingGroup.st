"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200037f0; bytecode file offset 0x90206c"
!AbtNlsMissingGroup methodsFor: 'recovered'!
messageAnnotationFormat: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200049a0; bytecode file offset 0x90206c"
!AbtNlsMissingGroup methodsFor: 'recovered'!
do: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000cb94; bytecode file offset 0x909658"
!AbtNlsMissingGroup methodsFor: 'recovered'!
mriExists: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2003833c; bytecode file offset 0x934c18"
!AbtNlsMissingGroup methodsFor: 'recovered'!
effectiveIndex: recoveredArg1
    ^0
! !

"ASDBase.ic method 0x2005c8fc; bytecode file offset 0x959680"
!AbtNlsMissingGroup methodsFor: 'recovered'!
replacementRules
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtNLSCoordinator.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := (recoveredValue1) defaultReplacementRules.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200614b0; bytecode file offset 0x95e838"
!AbtNlsMissingGroup methodsFor: 'recovered'!
messageAnnotationFormat
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) groupName.
    recoveredValue1 := (recoveredValue0) , ('.Missing.%n.%e').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20158e90; bytecode file offset 0xa55760"
!AbtNlsMissingGroup methodsFor: 'recovered'!
log
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) groupName.
    recoveredValue1 := (recoveredValue0) printString.
    recoveredValue2 := ('NLS Error (VA).  Missing group named: %1.  Check that your MPR files exist and are properly registered.') bindWith: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := Transcript.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) cr.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue3) nextPutAll: (recoveredValue5).
    ^self
! !

