"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006e1fc; bytecode file offset 0x96af48"
!SGGenericComponentSource methodsFor: 'recovered'!
hRef
    | recoveredValue0 |
    recoveredValue0 := hRef.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c4b24; bytecode file offset 0x9c16b0"
!SGGenericComponentSource methodsFor: 'recovered'!
hRef: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    hRef := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20159bdc; bytecode file offset 0xa564a8"
!SGGenericComponentSource methodsFor: 'recovered'!
display
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := super display.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (recoveredValue1) lastNavigationObjectObject.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) userInterface.
    recoveredValue5 := (self) context.
    (recoveredValue2) editGenericComponentParentView: (recoveredValue4) context: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

