"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006e710; bytecode file offset 0x96b41c"
!RBFormula5Parm methodsFor: 'recovered'!
parameterValues
    | recoveredValue0 |
    recoveredValue0 := p.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20082578; bytecode file offset 0x97ee90"
!RBFormula5Parm methodsFor: 'recovered'!
getParameterNo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := p.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20084ae0; bytecode file offset 0x981ca4"
!RBFormula5Parm methodsFor: 'recovered'!
params: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) setP: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a8c4c; bytecode file offset 0x9a5510"
!RBFormula5Parm methodsFor: 'recovered'!
setP: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    p := recoveredValue0.
    (self) actualize.
    ^self
! !

"ASDBase.ic method 0x200b49f0; bytecode file offset 0x9b12ac"
!RBFormula5Parm methodsFor: 'recovered'!
parameterArray
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) parameterValues.
    recoveredValue1 := (recoveredValue0) copyFrom: (1) to: (5).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201f310c; bytecode file offset 0xaef9d4"
!RBFormula5Parm methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: (1) with: (0) with: (0) with: (1) with: (0) with: (0).
    (self) setP: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202dcc50; bytecode file offset 0xbd9534"
!RBFormula5Parm methodsFor: 'recovered'!
checkAndWriteParameters: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [:block280e6850Arg1 | 
    | block280e6850Value0 block280e6850Value1 |
    block280e6850Value0 := block280e6850Arg1.
    block280e6850Value1 := (block280e6850Value0) asIntOrFloatOrFraction.
    block280e6850Value1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) setP: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasInverse.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 'Formula must be invertible!!'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := '(c1 = 0) & (d1 = 0) not allowed.'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) advice: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f163c; bytecode file offset 0xbedf04"
!RBFormula5Parm methodsFor: 'recovered'!
xmlParams: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 5.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 18] ifFalse: [recoveredLocal1 := nil. recoveredPC := 39]] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) params: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2032850c; bytecode file offset 0xc24dd0"
!RBFormula5Parm methodsFor: 'recovered'!
parameterValuesXML
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := p.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 18] ifFalse: [recoveredLocal1 := nil. recoveredPC := 40]] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := p.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := 5.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := p.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack5 := 6.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20367f70; bytecode file offset 0xc64838"
!RBFormula5Parm methodsFor: 'recovered'!
actualize
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 |
    recoveredValue0 := p.
    recoveredValue1 := (recoveredValue0) at: (1).
    recoveredLocal5 := recoveredValue1.
    recoveredValue2 := p.
    recoveredValue3 := (recoveredValue2) at: (2).
    recoveredLocal4 := recoveredValue3.
    recoveredValue4 := p.
    recoveredValue5 := (recoveredValue4) at: (3).
    recoveredLocal3 := recoveredValue5.
    recoveredValue6 := p.
    recoveredValue7 := (recoveredValue6) at: (4).
    recoveredLocal2 := recoveredValue7.
    recoveredValue8 := p.
    recoveredValue9 := (recoveredValue8) at: (5).
    recoveredValue10 := p.
    recoveredValue11 := (recoveredValue10) at: (6).
    recoveredValue12 := (recoveredValue9) + (recoveredValue11).
    recoveredLocal1 := recoveredValue12.
    recoveredValue13 := recoveredLocal4.
    recoveredValue14 := recoveredLocal2.
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := (recoveredValue14) * (recoveredValue15).
    recoveredValue17 := (recoveredValue13) + (recoveredValue16).
    (self) c0: (recoveredValue17).
    recoveredValue18 := recoveredLocal2.
    (self) d0: (recoveredValue18).
    recoveredValue19 := recoveredLocal5.
    recoveredValue20 := recoveredLocal3.
    recoveredValue21 := recoveredLocal1.
    recoveredValue22 := (recoveredValue20) * (recoveredValue21).
    recoveredValue23 := (recoveredValue19) + (recoveredValue22).
    (self) c1: (recoveredValue23).
    recoveredValue24 := recoveredLocal3.
    (self) d1: (recoveredValue24).
    ^self
! !

"ASDBase.ic method 0x2037a79c; bytecode file offset 0xc77064"
!RBFormula5Parm methodsFor: 'recovered'!
updateSpecificInformationsIn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 |
    recoveredValue0 := p.
    recoveredValue1 := (recoveredValue0) at: (1).
    recoveredValue2 := p.
    recoveredValue3 := (recoveredValue2) at: (5).
    recoveredValue4 := p.
    recoveredValue5 := (recoveredValue4) at: (3).
    recoveredValue6 := (recoveredValue3) * (recoveredValue5).
    recoveredValue7 := (recoveredValue1) + (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := p.
    recoveredValue9 := (recoveredValue8) at: (2).
    recoveredValue10 := p.
    recoveredValue11 := (recoveredValue10) at: (5).
    recoveredValue12 := p.
    recoveredValue13 := (recoveredValue12) at: (4).
    recoveredValue14 := (recoveredValue11) * (recoveredValue13).
    recoveredValue15 := (recoveredValue9) + (recoveredValue14).
    recoveredLocal2 := recoveredValue15.
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := recoveredValue16.
    recoveredValue18 := Array.
    recoveredValue19 := recoveredLocal1.
    recoveredValue20 := (recoveredValue19) asCompuMethodCoeff.
    recoveredValue21 := recoveredLocal2.
    recoveredValue22 := (recoveredValue21) asCompuMethodCoeff.
    recoveredValue23 := p.
    recoveredValue24 := (recoveredValue23) at: (3).
    recoveredValue25 := (recoveredValue24) asCompuMethodCoeff.
    recoveredValue26 := p.
    recoveredValue27 := (recoveredValue26) at: (4).
    recoveredValue28 := (recoveredValue27) asCompuMethodCoeff.
    recoveredValue29 := (recoveredValue18) with: (0) with: (recoveredValue20) with: (recoveredValue22) with: (0) with: (recoveredValue25) with: (recoveredValue28).
    (recoveredValue17) coeffs: (recoveredValue29).
    ^recoveredValue16
! !

"ASDBase.ic method 0x2040191c; bytecode file offset 0xcfe1f0"
!RBFormula5Parm methodsFor: 'recovered'!
printFormula
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 |
    recoveredValue0 := p.
    recoveredValue1 := (recoveredValue0) at: (1).
    recoveredLocal7 := recoveredValue1.
    recoveredValue2 := p.
    recoveredValue3 := (recoveredValue2) at: (2).
    recoveredLocal6 := recoveredValue3.
    recoveredValue4 := p.
    recoveredValue5 := (recoveredValue4) at: (3).
    recoveredLocal5 := recoveredValue5.
    recoveredValue6 := p.
    recoveredValue7 := (recoveredValue6) at: (4).
    recoveredLocal4 := recoveredValue7.
    recoveredValue8 := p.
    recoveredValue9 := (recoveredValue8) at: (5).
    recoveredLocal3 := recoveredValue9.
    recoveredValue10 := p.
    recoveredValue11 := (recoveredValue10) at: (6).
    recoveredLocal2 := recoveredValue11.
    recoveredValue12 := recoveredLocal3.
    recoveredValue13 := recoveredLocal2.
    recoveredValue14 := (recoveredValue12) + (recoveredValue13).
    recoveredLocal1 := recoveredValue14.
    recoveredValue15 := recoveredLocal6.
    recoveredValue16 := (recoveredValue15) printString.
    recoveredValue17 := (recoveredValue16) , (' + ').
    recoveredValue18 := recoveredLocal7.
    recoveredValue19 := (recoveredValue18) printString.
    recoveredValue20 := (recoveredValue17) , (recoveredValue19).
    recoveredValue21 := (recoveredValue20) , (' * phys').
    recoveredLocal8 := recoveredValue21.
    recoveredValue22 := recoveredLocal4.
    recoveredValue23 := (recoveredValue22) printString.
    recoveredValue24 := (recoveredValue23) , (' + ').
    recoveredValue25 := recoveredLocal5.
    recoveredValue26 := (recoveredValue25) printString.
    recoveredValue27 := (recoveredValue24) , (recoveredValue26).
    recoveredValue28 := (recoveredValue27) , (' * phys').
    recoveredLocal9 := recoveredValue28.
    recoveredValue29 := recoveredLocal8.
    recoveredValue30 := ('f(phys) = ((') , (recoveredValue29).
    recoveredValue31 := (recoveredValue30) , (') / (').
    recoveredValue32 := recoveredLocal9.
    recoveredValue33 := (recoveredValue31) , (recoveredValue32).
    recoveredValue34 := (recoveredValue33) , (')) + ').
    recoveredValue35 := recoveredLocal1.
    recoveredValue36 := (recoveredValue35) printString.
    recoveredValue37 := (recoveredValue34) , (recoveredValue36).
    ^recoveredValue37
! !

"ASDBase.ic method 0x2049df28; bytecode file offset 0xd9a81c"
!RBFormula5Parm methodsFor: 'recovered'!
printFormOn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 |
    recoveredValue0 := p.
    recoveredValue1 := (recoveredValue0) at: (1).
    recoveredLocal6 := recoveredValue1.
    recoveredValue2 := p.
    recoveredValue3 := (recoveredValue2) at: (2).
    recoveredLocal5 := recoveredValue3.
    recoveredValue4 := p.
    recoveredValue5 := (recoveredValue4) at: (3).
    recoveredLocal4 := recoveredValue5.
    recoveredValue6 := p.
    recoveredValue7 := (recoveredValue6) at: (4).
    recoveredLocal3 := recoveredValue7.
    recoveredValue8 := p.
    recoveredValue9 := (recoveredValue8) at: (5).
    recoveredLocal2 := recoveredValue9.
    recoveredValue10 := p.
    recoveredValue11 := (recoveredValue10) at: (6).
    recoveredLocal1 := recoveredValue11.
    recoveredValue12 := recoveredLocal3.
    recoveredValue13 := (recoveredValue12) printString.
    recoveredValue14 := (recoveredValue13) , (' + ').
    recoveredValue15 := recoveredLocal4.
    recoveredValue16 := (recoveredValue15) printString.
    recoveredValue17 := (recoveredValue14) , (recoveredValue16).
    recoveredValue18 := (recoveredValue17) , (' * phys').
    recoveredLocal8 := recoveredValue18.
    recoveredValue19 := recoveredLocal5.
    recoveredValue20 := (recoveredValue19) printString.
    recoveredValue21 := (recoveredValue20) , (' + ').
    recoveredValue22 := recoveredLocal6.
    recoveredValue23 := (recoveredValue22) printString.
    recoveredValue24 := (recoveredValue21) , (recoveredValue23).
    recoveredValue25 := (recoveredValue24) , (' * phys').
    recoveredLocal7 := recoveredValue25.
    recoveredValue26 := recoveredArg1.
    recoveredValue27 := recoveredValue26.
    recoveredValue28 := recoveredLocal7.
    recoveredValue29 := ('               ') , (recoveredValue28).
    (recoveredValue27) nextPutAll: (recoveredValue29).
    recoveredValue30 := recoveredValue26.
    (recoveredValue30) cr.
    recoveredValue31 := recoveredValue26.
    recoveredValue32 := recoveredLocal8.
    recoveredValue33 := (recoveredValue32) size.
    recoveredValue34 := ('') fillBlankTo: (recoveredValue33).
    recoveredValue35 := recoveredLocal8.
    recoveredValue36 := (recoveredValue35) size.
    recoveredValue37 := (recoveredValue34) replaceFrom: (1) to: (recoveredValue36) withObject: ($-).
    recoveredValue38 := ('f(phys) = ') , (recoveredValue37).
    recoveredValue39 := (recoveredValue38) , ('       + ').
    recoveredValue40 := recoveredLocal2.
    recoveredValue41 := (recoveredValue40) printString.
    recoveredValue42 := (recoveredValue39) , (recoveredValue41).
    recoveredValue43 := (recoveredValue42) , (' [ + ').
    recoveredValue44 := recoveredLocal1.
    recoveredValue45 := (recoveredValue44) printString.
    recoveredValue46 := (recoveredValue43) , (recoveredValue45).
    recoveredValue47 := (recoveredValue46) , (' ]').
    (recoveredValue31) nextPutAll: (recoveredValue47).
    recoveredValue48 := recoveredValue26.
    (recoveredValue48) cr.
    recoveredValue49 := recoveredLocal8.
    recoveredValue50 := ('               ') , (recoveredValue49).
    (recoveredValue26) nextPutAll: (recoveredValue50).
    ^self
! !

"ASDBase.ic method 0x205858b8; bytecode file offset 0xe821ac"
!RBFormula5Parm methodsFor: 'recovered'!
printFormInverseOn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInvertible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 258].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := p.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := p.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := p.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := p.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := p.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 5.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := p.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 6.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := -1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) printString.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := ' * hex'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredPC := 124.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) printString.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredPC := 124.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) printString.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := ' + '.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := ' * hex'.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) printString.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := ' * hex'.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredPC := 196.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 158] ifFalse: [recoveredPC := 170].
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := -1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := (recoveredStack0) printString.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredPC := 196.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := -1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := (recoveredStack0) printString.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := ' + '.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := ' * hex'.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack2 := '               '.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := 'phys =    '.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack3 := (recoveredStack3) fillBlankTo: (recoveredStack4).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack6 := $-.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack3 := (recoveredStack3) replaceFrom: (recoveredStack4) to: (recoveredStack5) withObject: (recoveredStack6).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := '               '.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredPC := 263.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            (recoveredStack0) printFormOn: (recoveredStack1).
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

