"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20048960; bytecode file offset 0x945248"
!ETASErrorLogFile class methodsFor: 'recovered'!
ClearHaltOnError
    HaltOnError := false.
    ^self
! !

"ASDBase.ic method 0x2004a890; bytecode file offset 0x94716c"
!ETASErrorLogFile class methodsFor: 'recovered'!
SetHaltOnError
    HaltOnError := true.
    ^self
! !

"ASDBase.ic method 0x200877dc; bytecode file offset 0x9840b8"
!ETASErrorLogFile class methodsFor: 'recovered'!
createDefault
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200877fc; bytecode file offset 0x9840b8"
!ETASErrorLogFile class methodsFor: 'recovered'!
createEmpty
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initializeEmpty.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

