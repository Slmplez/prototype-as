"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016a3c; bytecode file offset 0x92209c"
!ASDNumericalSolverOptions class methodsFor: 'recovered'!
defaultH
    ^#[252 169 241 210 77 98 64 63]
! !

"ASDBase.ic method 0x2001a5c4; bytecode file offset 0x92209c"
!ASDNumericalSolverOptions class methodsFor: 'recovered'!
defaultAbsoluteError
    ^#[141 237 181 160 247 198 176 62]
! !

"ASDBase.ic method 0x2001b4b8; bytecode file offset 0x92209c"
!ASDNumericalSolverOptions class methodsFor: 'recovered'!
defaultMaximumH
    ^#[123 20 174 71 225 122 116 63]
! !

"ASDBase.ic method 0x2001c0b8; bytecode file offset 0x92209c"
!ASDNumericalSolverOptions class methodsFor: 'recovered'!
defaultDT
    ^#[154 153 153 153 153 153 169 63]
! !

"ASDBase.ic method 0x20021458; bytecode file offset 0x92209c"
!ASDNumericalSolverOptions class methodsFor: 'recovered'!
defaultInitialH
    ^#[252 169 241 210 77 98 64 63]
! !

"ASDBase.ic method 0x20023750; bytecode file offset 0x92209c"
!ASDNumericalSolverOptions class methodsFor: 'recovered'!
defaultMinimumH
    ^#[45 67 28 235 226 54 10 63]
! !

"ASDBase.ic method 0x200258dc; bytecode file offset 0x923928"
!ASDNumericalSolverOptions class methodsFor: 'recovered'!
defaultRelativeError
    ^#[141 237 181 160 247 198 176 62]
! !

"ASDBase.ic method 0x20030834; bytecode file offset 0x934580"
!ASDNumericalSolverOptions class methodsFor: 'recovered'!
defaultSolver
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getAllAvailableSolvers.
    recoveredValue1 := (recoveredValue0) first.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20080ec8; bytecode file offset 0x97d79c"
!ASDNumericalSolverOptions class methodsFor: 'recovered'!
defaultMaxIterations
    ^100
! !

"ASDBase.ic method 0x20089b94; bytecode file offset 0x986454"
!ASDNumericalSolverOptions class methodsFor: 'recovered'!
getAllAvailableSolvers
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGSimCTParameters.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) allSolvers: (false).
    ^recoveredValue2
! !

