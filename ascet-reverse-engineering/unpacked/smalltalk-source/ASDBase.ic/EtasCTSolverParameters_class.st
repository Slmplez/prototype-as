"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20036e24; bytecode file offset 0x934580"
!EtasCTSolverParameters class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x203438d0; bytecode file offset 0xc401ac"
!EtasCTSolverParameters class methodsFor: 'recovered'!
allIntegratorsOnline
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := Association.
    recoveredValue4 := (recoveredValue3) key: ('Euler') value: (1).
    (recoveredValue2) add: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := Association.
    recoveredValue7 := (recoveredValue6) key: ('Mulstep 2') value: (2).
    (recoveredValue5) add: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := Association.
    recoveredValue10 := (recoveredValue9) key: ('Heun') value: (4).
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := Association.
    recoveredValue13 := (recoveredValue12) key: ('Adams Moulton 2') value: (7).
    (recoveredValue11) add: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := Association.
    recoveredValue16 := (recoveredValue15) key: ('Runge Kutta 4') value: (10).
    (recoveredValue14) add: (recoveredValue16).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2038e810; bytecode file offset 0xc8b0f0"
!EtasCTSolverParameters class methodsFor: 'recovered'!
allIntegrators
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := Association.
    recoveredValue4 := (recoveredValue3) key: ('Euler') value: (1).
    (recoveredValue2) add: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := Association.
    recoveredValue7 := (recoveredValue6) key: ('Mulstep 2') value: (2).
    (recoveredValue5) add: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := Association.
    recoveredValue10 := (recoveredValue9) key: ('Heun') value: (4).
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := Association.
    recoveredValue13 := (recoveredValue12) key: ('Adams Moulton 2') value: (7).
    (recoveredValue11) add: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := Association.
    recoveredValue16 := (recoveredValue15) key: ('Runge Kutta 4') value: (10).
    (recoveredValue14) add: (recoveredValue16).
    recoveredValue17 := recoveredValue1.
    recoveredValue18 := Association.
    recoveredValue19 := (recoveredValue18) key: ('Gear 4') value: (12).
    (recoveredValue17) add: (recoveredValue19).
    ^recoveredValue1
! !

