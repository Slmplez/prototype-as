"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012948; bytecode file offset 0x912098"
!SGDependencyParamCtrl class methodsFor: 'recovered'!
dataTypeCompatibility
    | recoveredValue0 |
    recoveredValue0 := DataTypeCompatibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014c4c; bytecode file offset 0x912098"
!SGDependencyParamCtrl class methodsFor: 'recovered'!
scopeCompatibility
    | recoveredValue0 |
    recoveredValue0 := ScopeCompatibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20030cc4; bytecode file offset 0x934580"
!SGDependencyParamCtrl class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20053eb8; bytecode file offset 0x951190"
!SGDependencyParamCtrl class methodsFor: 'recovered'!
scopeCompatibility: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ScopeCompatibility := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200544d0; bytecode file offset 0x951190"
!SGDependencyParamCtrl class methodsFor: 'recovered'!
dataTypeCompatibility: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    DataTypeCompatibility := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2018be88; bytecode file offset 0xa88754"
!SGDependencyParamCtrl class methodsFor: 'recovered'!
create: recoveredArg1 table: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) parameter: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) copy.
    (recoveredValue3) table: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) getModelParameters.
    (recoveredValue6) modelParameters: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x204a9a9c; bytecode file offset 0xda63a0"
!SGDependencyParamCtrl class methodsFor: 'recovered'!
initializeClass
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    (self) dataTypeCompatibility: (recoveredValue1).
    recoveredValue2 := LookupTable.
    recoveredValue3 := (recoveredValue2) new.
    (self) scopeCompatibility: (recoveredValue3).
    recoveredValue4 := (self) scopeCompatibility.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := Array.
    recoveredValue7 := (recoveredValue6) with: ('Local') with: ('Exported') with: ('Imported').
    (recoveredValue5) at: ('Local') put: (recoveredValue7).
    recoveredValue8 := Array.
    recoveredValue9 := (recoveredValue8) with: ('Exported') with: ('Imported').
    (recoveredValue4) at: ('Exported') put: (recoveredValue9).
    recoveredValue10 := (self) dataTypeCompatibility.
    recoveredValue11 := recoveredValue10.
    recoveredValue12 := Array.
    recoveredValue13 := (recoveredValue12) with: ('Scalar') with: ('Enumeration').
    (recoveredValue11) at: ('Scalar') put: (recoveredValue13).
    recoveredValue14 := recoveredValue10.
    recoveredValue15 := Array.
    recoveredValue16 := (recoveredValue15) with: ('Array') with: ('Scalar').
    (recoveredValue14) at: ('Array') put: (recoveredValue16).
    recoveredValue17 := recoveredValue10.
    recoveredValue18 := Array.
    recoveredValue19 := (recoveredValue18) with: ('Matrix') with: ('Scalar').
    (recoveredValue17) at: ('Matrix') put: (recoveredValue19).
    recoveredValue20 := recoveredValue10.
    recoveredValue21 := Array.
    recoveredValue22 := (recoveredValue21) with: ('OneDTable') with: ('Scalar').
    (recoveredValue20) at: ('OneDTable') put: (recoveredValue22).
    recoveredValue23 := recoveredValue10.
    recoveredValue24 := Array.
    recoveredValue25 := (recoveredValue24) with: ('TwoDTable') with: ('Scalar').
    (recoveredValue23) at: ('TwoDTable') put: (recoveredValue25).
    recoveredValue26 := recoveredValue10.
    recoveredValue27 := Array.
    recoveredValue28 := (recoveredValue27) with: ('Distribution') with: ('Scalar').
    (recoveredValue26) at: ('Distribution') put: (recoveredValue28).
    recoveredValue29 := Array.
    recoveredValue30 := (recoveredValue29) with: ('Enumeration') with: ('Scalar').
    (recoveredValue10) at: ('Enumeration') put: (recoveredValue30).
    ^self
! !

