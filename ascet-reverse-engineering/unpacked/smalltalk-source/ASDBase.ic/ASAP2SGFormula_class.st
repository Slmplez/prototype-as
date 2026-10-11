"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001287c; bytecode file offset 0x912098"
!ASAP2SGFormula class methodsFor: 'recovered'!
unaryOperators
    | recoveredValue0 |
    recoveredValue0 := UnaryOperators.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20012e34; bytecode file offset 0x912098"
!ASAP2SGFormula class methodsFor: 'recovered'!
functions
    | recoveredValue0 |
    recoveredValue0 := Functions.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20013704; bytecode file offset 0x912098"
!ASAP2SGFormula class methodsFor: 'recovered'!
binaryOperators
    | recoveredValue0 |
    recoveredValue0 := BinaryOperators.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20015240; bytecode file offset 0x912098"
!ASAP2SGFormula class methodsFor: 'recovered'!
compositeOperators
    | recoveredValue0 |
    recoveredValue0 := CompositeOperators.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20053f60; bytecode file offset 0x951190"
!ASAP2SGFormula class methodsFor: 'recovered'!
binaryOperators: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    BinaryOperators := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2005405c; bytecode file offset 0x951190"
!ASAP2SGFormula class methodsFor: 'recovered'!
unaryOperators: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    UnaryOperators := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20054464; bytecode file offset 0x951190"
!ASAP2SGFormula class methodsFor: 'recovered'!
compositeOperators: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    CompositeOperators := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20054854; bytecode file offset 0x951190"
!ASAP2SGFormula class methodsFor: 'recovered'!
functions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    Functions := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20059be4; bytecode file offset 0x9566ac"
!ASAP2SGFormula class methodsFor: 'recovered'!
create: recoveredArg1 formula: recoveredArg2
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2009127c; bytecode file offset 0x98de70"
!ASAP2SGFormula class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2014a790; bytecode file offset 0xa47050"
!ASAP2SGFormula class methodsFor: 'recovered'!
calculateEsFormula: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) formula: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) esFormula.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20329450; bytecode file offset 0xc25d20"
!ASAP2SGFormula class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) create.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := recoveredLocal2.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) getIDsAndIndizes: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 |
    recoveredBlock21Value0 := recoveredLocal2.
    recoveredBlock21Value1 := recoveredBlock21Arg1.
    recoveredBlock21Value2 := (recoveredBlock21Value1) at: (1).
    recoveredBlock21Value3 := (recoveredBlock21Value0) addIdentifier: (recoveredBlock21Value2).
    recoveredBlock21Value3
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) formula: (recoveredValue7).
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := (recoveredValue8) calculateEsFormula.
    recoveredLocal2 := recoveredValue9.
    recoveredValue10 := recoveredLocal2.
    ^recoveredValue10
! !

"ASDBase.ic method 0x20633518; bytecode file offset 0xf2ff14"
!ASAP2SGFormula class methodsFor: 'recovered'!
initializeClass
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 recoveredValue94 recoveredValue95 recoveredValue96 recoveredValue97 recoveredValue98 recoveredValue99 recoveredValue100 recoveredValue101 recoveredValue102 recoveredValue103 recoveredValue104 recoveredValue105 recoveredValue106 recoveredValue107 recoveredValue108 recoveredValue109 recoveredValue110 recoveredValue111 recoveredValue112 recoveredValue113 recoveredValue114 recoveredValue115 recoveredValue116 recoveredValue117 recoveredValue118 recoveredValue119 recoveredValue120 recoveredValue121 recoveredValue122 recoveredValue123 recoveredValue124 recoveredValue125 recoveredValue126 recoveredValue127 recoveredValue128 recoveredValue129 recoveredValue130 recoveredValue131 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    (self) binaryOperators: (recoveredValue1).
    recoveredValue2 := LookupTable.
    recoveredValue3 := (recoveredValue2) new.
    (self) unaryOperators: (recoveredValue3).
    recoveredValue4 := LookupTable.
    recoveredValue5 := (recoveredValue4) new.
    (self) functions: (recoveredValue5).
    recoveredValue6 := LookupTable.
    recoveredValue7 := (recoveredValue6) new.
    (self) compositeOperators: (recoveredValue7).
    recoveredValue8 := (self) unaryOperators.
    recoveredValue9 := recoveredValue8.
    recoveredValue10 := Array.
    recoveredValue11 := (recoveredValue10) with: ('notFunc') with: (1).
    (recoveredValue9) at: ('!!') put: (recoveredValue11).
    recoveredValue12 := recoveredValue8.
    recoveredValue13 := Array.
    recoveredValue14 := (recoveredValue13) with: ('minus') with: (1).
    (recoveredValue12) at: ('-') put: (recoveredValue14).
    recoveredValue15 := Array.
    recoveredValue16 := (recoveredValue15) with: ('plus') with: (1).
    (recoveredValue8) at: ('+') put: (recoveredValue16).
    recoveredValue17 := (self) binaryOperators.
    recoveredValue18 := recoveredValue17.
    recoveredValue19 := Array.
    recoveredValue20 := (recoveredValue19) with: ('multiplicate:') with: (3).
    (recoveredValue18) at: ('*') put: (recoveredValue20).
    recoveredValue21 := recoveredValue17.
    recoveredValue22 := Array.
    recoveredValue23 := (recoveredValue22) with: ('divide:') with: (3).
    (recoveredValue21) at: ('/') put: (recoveredValue23).
    recoveredValue24 := recoveredValue17.
    recoveredValue25 := Array.
    recoveredValue26 := (recoveredValue25) with: ('modulo:') with: (3).
    (recoveredValue24) at: ('%') put: (recoveredValue26).
    recoveredValue27 := recoveredValue17.
    recoveredValue28 := Array.
    recoveredValue29 := (recoveredValue28) with: ('plus:') with: (4).
    (recoveredValue27) at: ('+') put: (recoveredValue29).
    recoveredValue30 := recoveredValue17.
    recoveredValue31 := Array.
    recoveredValue32 := (recoveredValue31) with: ('minus:') with: (4).
    (recoveredValue30) at: ('-') put: (recoveredValue32).
    recoveredValue33 := recoveredValue17.
    recoveredValue34 := Array.
    recoveredValue35 := (recoveredValue34) with: ('shiftLeft:') with: (5).
    (recoveredValue33) at: ('<<') put: (recoveredValue35).
    recoveredValue36 := recoveredValue17.
    recoveredValue37 := Array.
    recoveredValue38 := (recoveredValue37) with: ('shiftRight:') with: (5).
    (recoveredValue36) at: ('>>') put: (recoveredValue38).
    recoveredValue39 := recoveredValue17.
    recoveredValue40 := Array.
    recoveredValue41 := (recoveredValue40) with: ('smallerThen:') with: (6).
    (recoveredValue39) at: ('<') put: (recoveredValue41).
    recoveredValue42 := recoveredValue17.
    recoveredValue43 := Array.
    recoveredValue44 := (recoveredValue43) with: ('smallerOrEqualThen:') with: (6).
    (recoveredValue42) at: ('<=') put: (recoveredValue44).
    recoveredValue45 := recoveredValue17.
    recoveredValue46 := Array.
    recoveredValue47 := (recoveredValue46) with: ('greaterThen:') with: (6).
    (recoveredValue45) at: ('>') put: (recoveredValue47).
    recoveredValue48 := recoveredValue17.
    recoveredValue49 := Array.
    recoveredValue50 := (recoveredValue49) with: ('greaterOrEqualThen:') with: (6).
    (recoveredValue48) at: ('>=') put: (recoveredValue50).
    recoveredValue51 := recoveredValue17.
    recoveredValue52 := Array.
    recoveredValue53 := (recoveredValue52) with: ('equal:') with: (7).
    (recoveredValue51) at: ('==') put: (recoveredValue53).
    recoveredValue54 := recoveredValue17.
    recoveredValue55 := Array.
    recoveredValue56 := (recoveredValue55) with: ('notEqual:') with: (7).
    (recoveredValue54) at: ('!!=') put: (recoveredValue56).
    recoveredValue57 := recoveredValue17.
    recoveredValue58 := Array.
    recoveredValue59 := (recoveredValue58) with: ('powerTo:') with: (9).
    (recoveredValue57) at: ('^') put: (recoveredValue59).
    recoveredValue60 := recoveredValue17.
    recoveredValue61 := Array.
    recoveredValue62 := (recoveredValue61) with: ('andFunc:') with: (11).
    (recoveredValue60) at: ('&&') put: (recoveredValue62).
    recoveredValue63 := Array.
    recoveredValue64 := (recoveredValue63) with: ('orFunc:') with: (12).
    (recoveredValue17) at: ('||') put: (recoveredValue64).
    recoveredValue65 := (self) functions.
    recoveredValue66 := recoveredValue65.
    recoveredValue67 := Array.
    recoveredValue68 := (recoveredValue67) with: ('absolute') with: (1).
    (recoveredValue66) at: ('abs') put: (recoveredValue68).
    recoveredValue69 := recoveredValue65.
    recoveredValue70 := Array.
    recoveredValue71 := (recoveredValue70) with: ('arcCosinus') with: (1).
    (recoveredValue69) at: ('acos') put: (recoveredValue71).
    recoveredValue72 := recoveredValue65.
    recoveredValue73 := Array.
    recoveredValue74 := (recoveredValue73) with: ('arcCosinus') with: (1).
    (recoveredValue72) at: ('arccos') put: (recoveredValue74).
    recoveredValue75 := recoveredValue65.
    recoveredValue76 := Array.
    recoveredValue77 := (recoveredValue76) with: ('arcSinus') with: (1).
    (recoveredValue75) at: ('asin') put: (recoveredValue77).
    recoveredValue78 := recoveredValue65.
    recoveredValue79 := Array.
    recoveredValue80 := (recoveredValue79) with: ('arcSinus') with: (1).
    (recoveredValue78) at: ('arcsin') put: (recoveredValue80).
    recoveredValue81 := recoveredValue65.
    recoveredValue82 := Array.
    recoveredValue83 := (recoveredValue82) with: ('arcTangens') with: (1).
    (recoveredValue81) at: ('atan') put: (recoveredValue83).
    recoveredValue84 := recoveredValue65.
    recoveredValue85 := Array.
    recoveredValue86 := (recoveredValue85) with: ('arcTangens') with: (1).
    (recoveredValue84) at: ('arctan') put: (recoveredValue86).
    recoveredValue87 := recoveredValue65.
    recoveredValue88 := Array.
    recoveredValue89 := (recoveredValue88) with: ('ceil') with: (1).
    (recoveredValue87) at: ('ceil') put: (recoveredValue89).
    recoveredValue90 := recoveredValue65.
    recoveredValue91 := Array.
    recoveredValue92 := (recoveredValue91) with: ('cosinus') with: (1).
    (recoveredValue90) at: ('cos') put: (recoveredValue92).
    recoveredValue93 := recoveredValue65.
    recoveredValue94 := Array.
    recoveredValue95 := (recoveredValue94) with: ('exp') with: (1).
    (recoveredValue93) at: ('exp') put: (recoveredValue95).
    recoveredValue96 := recoveredValue65.
    recoveredValue97 := Array.
    recoveredValue98 := (recoveredValue97) with: ('floorFunc') with: (1).
    (recoveredValue96) at: ('floor') put: (recoveredValue98).
    recoveredValue99 := recoveredValue65.
    recoveredValue100 := Array.
    recoveredValue101 := (recoveredValue100) with: ('logerithmic10') with: (1).
    (recoveredValue99) at: ('log') put: (recoveredValue101).
    recoveredValue102 := recoveredValue65.
    recoveredValue103 := Array.
    recoveredValue104 := (recoveredValue103) with: ('logerithmic') with: (1).
    (recoveredValue102) at: ('ln') put: (recoveredValue104).
    recoveredValue105 := recoveredValue65.
    recoveredValue106 := Array.
    recoveredValue107 := (recoveredValue106) with: ('logerithmic10') with: (1).
    (recoveredValue105) at: ('log10') put: (recoveredValue107).
    recoveredValue108 := recoveredValue65.
    recoveredValue109 := Array.
    recoveredValue110 := (recoveredValue109) with: ('powerTo:') with: (2).
    (recoveredValue108) at: ('pow') put: (recoveredValue110).
    recoveredValue111 := recoveredValue65.
    recoveredValue112 := Array.
    recoveredValue113 := (recoveredValue112) with: ('squareRoot') with: (1).
    (recoveredValue111) at: ('sqrt') put: (recoveredValue113).
    recoveredValue114 := recoveredValue65.
    recoveredValue115 := Array.
    recoveredValue116 := (recoveredValue115) with: ('sinus') with: (1).
    (recoveredValue114) at: ('sin') put: (recoveredValue116).
    recoveredValue117 := recoveredValue65.
    recoveredValue118 := Array.
    recoveredValue119 := (recoveredValue118) with: ('tangens') with: (1).
    (recoveredValue117) at: ('tan') put: (recoveredValue119).
    recoveredValue120 := recoveredValue65.
    recoveredValue121 := Array.
    recoveredValue122 := (recoveredValue121) with: ('minimum:') with: (nil).
    (recoveredValue120) at: ('min') put: (recoveredValue122).
    recoveredValue123 := Array.
    recoveredValue124 := (recoveredValue123) with: ('maximum:') with: (nil).
    (recoveredValue65) at: ('max') put: (recoveredValue124).
    recoveredValue125 := (self) compositeOperators.
    recoveredValue126 := recoveredValue125.
    (recoveredValue126) at: ('*') put: ('multiplicate:').
    recoveredValue127 := recoveredValue125.
    (recoveredValue127) at: ('/') put: ('divide:').
    recoveredValue128 := recoveredValue125.
    (recoveredValue128) at: ('%') put: ('modulo:').
    recoveredValue129 := recoveredValue125.
    (recoveredValue129) at: ('+') put: ('plus:').
    recoveredValue130 := recoveredValue125.
    (recoveredValue130) at: ('-') put: ('minus:').
    recoveredValue131 := recoveredValue125.
    (recoveredValue131) at: ('&&') put: ('andFunc:').
    (recoveredValue125) at: ('||') put: ('orFunc:').
    ^self
! !

