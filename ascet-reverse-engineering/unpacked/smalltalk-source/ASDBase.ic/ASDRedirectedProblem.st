"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002b074; bytecode file offset 0x934580"
!ASDRedirectedProblem methodsFor: 'recovered'!
conflict
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) refProblem.
    recoveredValue1 := (recoveredValue0) conflict.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002b584; bytecode file offset 0x934580"
!ASDRedirectedProblem methodsFor: 'recovered'!
isError
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) refProblem.
    recoveredValue1 := (recoveredValue0) isError.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002b7f4; bytecode file offset 0x934580"
!ASDRedirectedProblem methodsFor: 'recovered'!
isWarning
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) refProblem.
    recoveredValue1 := (recoveredValue0) isWarning.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e534; bytecode file offset 0x934580"
!ASDRedirectedProblem methodsFor: 'recovered'!
performCorrection
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) solution.
    recoveredValue1 := (recoveredValue0) send.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200303c4; bytecode file offset 0x934580"
!ASDRedirectedProblem methodsFor: 'recovered'!
iconName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) refProblem.
    recoveredValue1 := (recoveredValue0) iconName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20065aec; bytecode file offset 0x963428"
!ASDRedirectedProblem methodsFor: 'recovered'!
refProblem
    | recoveredValue0 |
    recoveredValue0 := refProblem.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067744; bytecode file offset 0x9646f8"
!ASDRedirectedProblem methodsFor: 'recovered'!
solution
    | recoveredValue0 |
    recoveredValue0 := solution.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20076564; bytecode file offset 0x9757c8"
!ASDRedirectedProblem methodsFor: 'recovered'!
isRedirectedProblem
    ^true
! !

"ASDBase.ic method 0x20082e7c; bytecode file offset 0x97f798"
!ASDRedirectedProblem methodsFor: 'recovered'!
refProblem: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    refProblem := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20082f30; bytecode file offset 0x97f81c"
!ASDRedirectedProblem methodsFor: 'recovered'!
solution: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    solution := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200e1db4; bytecode file offset 0x9de890"
!ASDRedirectedProblem methodsFor: 'recovered'!
source
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) refProblem.
    recoveredValue1 := (recoveredValue0) source.
    recoveredValue2 := ('(') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , (')').
    ^recoveredValue3
! !

