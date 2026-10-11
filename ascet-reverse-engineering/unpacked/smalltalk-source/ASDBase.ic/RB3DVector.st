"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200668b4; bytecode file offset 0x963428"
!RB3DVector methodsFor: 'recovered'!
values
    | recoveredValue0 |
    recoveredValue0 := values.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008aa68; bytecode file offset 0x987320"
!RB3DVector methodsFor: 'recovered'!
x
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := values.
    recoveredValue1 := (recoveredValue0) at: (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008aa94; bytecode file offset 0x98734c"
!RB3DVector methodsFor: 'recovered'!
y
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := values.
    recoveredValue1 := (recoveredValue0) at: (2).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008aaac; bytecode file offset 0x987364"
!RB3DVector methodsFor: 'recovered'!
z
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := values.
    recoveredValue1 := (recoveredValue0) at: (3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b87f4; bytecode file offset 0x9b50ac"
!RB3DVector methodsFor: 'recovered'!
x: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := values.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: (1) put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b880c; bytecode file offset 0x9b50c4"
!RB3DVector methodsFor: 'recovered'!
y: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := values.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: (2) put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b8824; bytecode file offset 0x9b50dc"
!RB3DVector methodsFor: 'recovered'!
z: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := values.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: (3) put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bd99c; bytecode file offset 0x9bb178"
!RB3DVector methodsFor: 'recovered'!
values: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    values := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2011c110; bytecode file offset 0xa189d8"
!RB3DVector methodsFor: 'recovered'!
abs
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) x.
    recoveredValue1 := (recoveredValue0) squared.
    recoveredValue2 := (self) y.
    recoveredValue3 := (recoveredValue2) squared.
    recoveredValue4 := (recoveredValue1) + (recoveredValue3).
    recoveredValue5 := (self) z.
    recoveredValue6 := (recoveredValue5) squared.
    recoveredValue7 := (recoveredValue4) + (recoveredValue6).
    recoveredValue8 := (recoveredValue7) sqrt.
    ^recoveredValue8
! !

"ASDBase.ic method 0x201b4954; bytecode file offset 0xab1224"
!RB3DVector methodsFor: 'recovered'!
* recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) class.
    recoveredValue1 := Array.
    recoveredValue2 := (self) x.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) * (recoveredValue3).
    recoveredValue5 := (self) y.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue5) * (recoveredValue6).
    recoveredValue8 := (self) z.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue8) * (recoveredValue9).
    recoveredValue11 := (recoveredValue1) with: (recoveredValue4) with: (recoveredValue7) with: (recoveredValue10).
    recoveredValue12 := (recoveredValue0) createWith: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x201f58a4; bytecode file offset 0xaf2174"
!RB3DVector methodsFor: 'recovered'!
+ recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := (self) class.
    recoveredValue1 := Array.
    recoveredValue2 := (self) x.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) x.
    recoveredValue5 := (recoveredValue2) + (recoveredValue4).
    recoveredValue6 := (self) y.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) y.
    recoveredValue9 := (recoveredValue6) + (recoveredValue8).
    recoveredValue10 := (self) z.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) z.
    recoveredValue13 := (recoveredValue10) + (recoveredValue12).
    recoveredValue14 := (recoveredValue1) with: (recoveredValue5) with: (recoveredValue9) with: (recoveredValue13).
    recoveredValue15 := (recoveredValue0) createWith: (recoveredValue14).
    ^recoveredValue15
! !

"ASDBase.ic method 0x201f58e8; bytecode file offset 0xaf21b8"
!RB3DVector methodsFor: 'recovered'!
- recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := (self) class.
    recoveredValue1 := Array.
    recoveredValue2 := (self) x.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) x.
    recoveredValue5 := (recoveredValue2) - (recoveredValue4).
    recoveredValue6 := (self) y.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) y.
    recoveredValue9 := (recoveredValue6) - (recoveredValue8).
    recoveredValue10 := (self) z.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) z.
    recoveredValue13 := (recoveredValue10) - (recoveredValue12).
    recoveredValue14 := (recoveredValue1) with: (recoveredValue5) with: (recoveredValue9) with: (recoveredValue13).
    recoveredValue15 := (recoveredValue0) createWith: (recoveredValue14).
    ^recoveredValue15
! !

"ASDBase.ic method 0x20200940; bytecode file offset 0xafd20c"
!RB3DVector methodsFor: 'recovered'!
add: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) x.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) x.
    recoveredValue3 := (recoveredValue0) + (recoveredValue2).
    (self) x: (recoveredValue3).
    recoveredValue4 := (self) y.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) y.
    recoveredValue7 := (recoveredValue4) + (recoveredValue6).
    (self) y: (recoveredValue7).
    recoveredValue8 := (self) z.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) z.
    recoveredValue11 := (recoveredValue8) + (recoveredValue10).
    (self) z: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x20271030; bytecode file offset 0xb6d8ec"
!RB3DVector methodsFor: 'recovered'!
scalarProductWith: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) values.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := values.
    recoveredValue3 := (recoveredValue2) at: (1).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) at: (1).
    recoveredValue6 := (recoveredValue3) * (recoveredValue5).
    recoveredValue7 := values.
    recoveredValue8 := (recoveredValue7) at: (2).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) at: (2).
    recoveredValue11 := (recoveredValue8) * (recoveredValue10).
    recoveredValue12 := (recoveredValue6) + (recoveredValue11).
    recoveredValue13 := values.
    recoveredValue14 := (recoveredValue13) at: (3).
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := (recoveredValue15) at: (3).
    recoveredValue17 := (recoveredValue14) * (recoveredValue16).
    recoveredValue18 := (recoveredValue12) + (recoveredValue17).
    ^recoveredValue18
! !

