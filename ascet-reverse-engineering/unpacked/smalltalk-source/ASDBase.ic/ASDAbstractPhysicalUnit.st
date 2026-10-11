"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20007b38; bytecode file offset 0x908be4"
!ASDAbstractPhysicalUnit methodsFor: 'recovered'!
asPhysicalUnitWithZeroOffset
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20008d5c; bytecode file offset 0x908be4"
!ASDAbstractPhysicalUnit methodsFor: 'recovered'!
errLabel
    | recoveredValue0 |
    recoveredValue0 := (self) name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004e594; bytecode file offset 0x94d048"
!ASDAbstractPhysicalUnit methodsFor: 'recovered'!
factor
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004f938; bytecode file offset 0x94d048"
!ASDAbstractPhysicalUnit methodsFor: 'recovered'!
exponents
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004ff44; bytecode file offset 0x94d048"
!ASDAbstractPhysicalUnit methodsFor: 'recovered'!
offset
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20059cc8; bytecode file offset 0x9566ac"
!ASDAbstractPhysicalUnit methodsFor: 'recovered'!
addToExponents: recoveredArg1 exponent: recoveredArg2
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20065d64; bytecode file offset 0x963428"
!ASDAbstractPhysicalUnit methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066f84; bytecode file offset 0x9646f8"
!ASDAbstractPhysicalUnit methodsFor: 'recovered'!
ansiCName
    | recoveredValue0 |
    recoveredValue0 := ansiCName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006890c; bytecode file offset 0x965b90"
!ASDAbstractPhysicalUnit methodsFor: 'recovered'!
unitCategory
    | recoveredValue0 |
    recoveredValue0 := category.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20079eb4; bytecode file offset 0x97c330"
!ASDAbstractPhysicalUnit methodsFor: 'recovered'!
isGenericPhysicalUnitWithOffset
    ^false
! !

"ASDBase.ic method 0x2007ba14; bytecode file offset 0x97c330"
!ASDAbstractPhysicalUnit methodsFor: 'recovered'!
isGenericPhysicalUnit
    ^false
! !

"ASDBase.ic method 0x2007ceac; bytecode file offset 0x97c330"
!ASDAbstractPhysicalUnit methodsFor: 'recovered'!
isCgNoPhysicalUnit
    ^false
! !

"ASDBase.ic method 0x2007da04; bytecode file offset 0x97c330"
!ASDAbstractPhysicalUnit methodsFor: 'recovered'!
isCgAnyPhysicalUnit
    ^false
! !

"ASDBase.ic method 0x200be70c; bytecode file offset 0x9bb178"
!ASDAbstractPhysicalUnit methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf0b0; bytecode file offset 0x9bc0b4"
!ASDAbstractPhysicalUnit methodsFor: 'recovered'!
ansiCName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ansiCName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c036c; bytecode file offset 0x9bd228"
!ASDAbstractPhysicalUnit methodsFor: 'recovered'!
unitCategory: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    category := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200fde28; bytecode file offset 0x9fa6e4"
!ASDAbstractPhysicalUnit methodsFor: 'recovered'!
isCgPhysicalUnitCompatibleTo: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgNoPhysicalUnit.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasSameExponents: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20166288; bytecode file offset 0xa62b48"
!ASDAbstractPhysicalUnit methodsFor: 'recovered'!
isCgPhysicalUnitIdentical: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgNoPhysicalUnit.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAnyPhysicalUnit.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasSameExponents: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2027721c; bytecode file offset 0xb73ae4"
!ASDAbstractPhysicalUnit methodsFor: 'recovered'!
isCgPhysicalUnitIdenticalWithScale: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgNoPhysicalUnit.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAnyPhysicalUnit.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) factor.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) factor.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) offset.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) offset.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasSameExponents: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202983a4; bytecode file offset 0xb94c74"
!ASDAbstractPhysicalUnit methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) nextPut: ($ ).
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := (self) name.
    (recoveredValue3) nextPutAll: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) nextPut: ($[).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) ansiCName.
    (recoveredValue6) nextPutAll: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) nextPut: ($]).
    (recoveredValue1) cr.
    ^self
! !

"ASDBase.ic method 0x2031f474; bytecode file offset 0xc1bd48"
!ASDAbstractPhysicalUnit methodsFor: 'recovered'!
convertCgPhysicalUnitWith: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) unitCategory.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) unitCategory.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) unitCategory.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := ASDPhysicalDerivedUnit.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) exponents.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) ansiCName: (recoveredStack2) exponents: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) factor: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) offset: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) unitCategory.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203697e8; bytecode file offset 0xc660b4"
!ASDAbstractPhysicalUnit methodsFor: 'recovered'!
hasSameExponents: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) exponents.
    recoveredValue1 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg1.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) exponents.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack4 := [
    0
].
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) at: (recoveredBlock5Stack3) ifAbsent: (recoveredBlock5Stack4).
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg2.
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) ~= (recoveredBlock5Stack3).
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 34] ifFalse: [recoveredBlock5PC := 37].
        ].
        recoveredBlock5Step = 34 ifTrue: [
            recoveredBlock5PC := 35.
        ].
        recoveredBlock5Step = 35 ifTrue: [
            recoveredBlock5Stack1 := false.
            recoveredBlock5PC := 36.
        ].
        recoveredBlock5Step = 36 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 37 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) keysAndValuesDo: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) exponents.
    recoveredValue4 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Stack0 recoveredBlock44Stack1 recoveredBlock44Stack2 recoveredBlock44Stack3 recoveredBlock44Stack4 recoveredBlock44PC recoveredBlock44Step recoveredBlock44Done recoveredBlock44Result |
    recoveredBlock44Stack0 := self.
    recoveredBlock44PC := 50.
    recoveredBlock44Done := false.
    [recoveredBlock44Done not] whileTrue: [
        recoveredBlock44Step := recoveredBlock44PC.
        recoveredBlock44Step = 50 ifTrue: [
            recoveredBlock44Stack1 := nil.
            recoveredBlock44PC := 51.
        ].
        recoveredBlock44Step = 51 ifTrue: [
            recoveredBlock44Stack2 := self.
            recoveredBlock44PC := 52.
        ].
        recoveredBlock44Step = 52 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) exponents.
            recoveredBlock44PC := 53.
        ].
        recoveredBlock44Step = 53 ifTrue: [
            recoveredBlock44Stack3 := recoveredBlock44Arg1.
            recoveredBlock44PC := 54.
        ].
        recoveredBlock44Step = 54 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) includesKey: (recoveredBlock44Stack3).
            recoveredBlock44PC := 56.
        ].
        recoveredBlock44Step = 56 ifTrue: [
            (recoveredBlock44Stack2) ifTrue: [recoveredBlock44PC := 63] ifFalse: [recoveredBlock44PC := 60].
        ].
        recoveredBlock44Step = 60 ifTrue: [
            recoveredBlock44PC := 61.
        ].
        recoveredBlock44Step = 61 ifTrue: [
            recoveredBlock44Stack1 := false.
            recoveredBlock44PC := 62.
        ].
        recoveredBlock44Step = 62 ifTrue: [
            ^recoveredBlock44Stack1
        ].
        recoveredBlock44Step = 63 ifTrue: [
            recoveredBlock44Result := recoveredBlock44Stack1.
            recoveredBlock44Done := true.
        ].
    ].
    recoveredBlock44Result
].
    (recoveredValue3) keysDo: (recoveredValue4).
    ^true
! !

"ASDBase.ic method 0x203985e4; bytecode file offset 0xc94eb4"
!ASDAbstractPhysicalUnit methodsFor: 'recovered'!
mdlConvert: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgArithmeticType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) physicalUnit.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgNoPhysicalUnit.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 655.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := (recoveredStack4) mdlClass.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := (recoveredStack4) physicalUnit.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) mdlWarningNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) unitCategory.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 73] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) unitCategory.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 73] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) unitCategory.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 73].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := 656.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) unitCategory.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) mdlWarningNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2046d560; bytecode file offset 0xd69e58"
!ASDAbstractPhysicalUnit methodsFor: 'recovered'!
mulWithPhysicalUnit: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgNoPhysicalUnit.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) exponents.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [:recoveredBlock23Arg1 :recoveredBlock23Arg2 | 
    | recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23Stack3 recoveredBlock23Stack4 recoveredBlock23Stack5 recoveredBlock23Stack6 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
    recoveredBlock23Stack0 := self.
    recoveredBlock23PC := 30.
    recoveredBlock23Done := false.
    [recoveredBlock23Done not] whileTrue: [
        recoveredBlock23Step := recoveredBlock23PC.
        recoveredBlock23Step = 30 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal1.
            recoveredBlock23PC := 33.
        ].
        recoveredBlock23Step = 33 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Arg1.
            recoveredBlock23PC := 34.
        ].
        recoveredBlock23Step = 34 ifTrue: [
            recoveredBlock23Stack3 := recoveredArg1.
            recoveredBlock23PC := 37.
        ].
        recoveredBlock23Step = 37 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) exponents.
            recoveredBlock23PC := 38.
        ].
        recoveredBlock23Step = 38 ifTrue: [
            recoveredBlock23Stack4 := recoveredBlock23Arg1.
            recoveredBlock23PC := 39.
        ].
        recoveredBlock23Step = 39 ifTrue: [
            recoveredBlock23Stack5 := [
    0
].
            recoveredBlock23PC := 41.
        ].
        recoveredBlock23Step = 41 ifTrue: [
            recoveredBlock23PC := 47.
        ].
        recoveredBlock23Step = 47 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) at: (recoveredBlock23Stack4) ifAbsent: (recoveredBlock23Stack5).
            recoveredBlock23PC := 49.
        ].
        recoveredBlock23Step = 49 ifTrue: [
            recoveredBlock23Stack4 := recoveredBlock23Arg2.
            recoveredBlock23PC := 50.
        ].
        recoveredBlock23Step = 50 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) + (recoveredBlock23Stack4).
            recoveredBlock23PC := 51.
        ].
        recoveredBlock23Step = 51 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) at: (recoveredBlock23Stack2) put: (recoveredBlock23Stack3).
            recoveredBlock23PC := 53.
        ].
        recoveredBlock23Step = 53 ifTrue: [
            recoveredBlock23Result := recoveredBlock23Stack1.
            recoveredBlock23Done := true.
        ].
    ].
    recoveredBlock23Result
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) exponents.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := [:recoveredBlock60Arg1 :recoveredBlock60Arg2 | 
    | recoveredBlock60Stack0 recoveredBlock60Stack1 recoveredBlock60Stack2 recoveredBlock60Stack3 recoveredBlock60Stack4 recoveredBlock60PC recoveredBlock60Step recoveredBlock60Done recoveredBlock60Result |
    recoveredBlock60Stack0 := self.
    recoveredBlock60PC := 66.
    recoveredBlock60Done := false.
    [recoveredBlock60Done not] whileTrue: [
        recoveredBlock60Step := recoveredBlock60PC.
        recoveredBlock60Step = 66 ifTrue: [
            recoveredBlock60Stack1 := nil.
            recoveredBlock60PC := 67.
        ].
        recoveredBlock60Step = 67 ifTrue: [
            recoveredBlock60Stack2 := self.
            recoveredBlock60PC := 68.
        ].
        recoveredBlock60Step = 68 ifTrue: [
            recoveredBlock60Stack2 := (recoveredBlock60Stack2) exponents.
            recoveredBlock60PC := 69.
        ].
        recoveredBlock60Step = 69 ifTrue: [
            recoveredBlock60Stack3 := recoveredBlock60Arg1.
            recoveredBlock60PC := 70.
        ].
        recoveredBlock60Step = 70 ifTrue: [
            recoveredBlock60Stack2 := (recoveredBlock60Stack2) includesKey: (recoveredBlock60Stack3).
            recoveredBlock60PC := 72.
        ].
        recoveredBlock60Step = 72 ifTrue: [
            (recoveredBlock60Stack2) ifTrue: [recoveredBlock60PC := 84] ifFalse: [recoveredBlock60PC := 76].
        ].
        recoveredBlock60Step = 76 ifTrue: [
            recoveredBlock60PC := 77.
        ].
        recoveredBlock60Step = 77 ifTrue: [
            recoveredBlock60Stack1 := recoveredLocal1.
            recoveredBlock60PC := 80.
        ].
        recoveredBlock60Step = 80 ifTrue: [
            recoveredBlock60Stack2 := recoveredBlock60Arg1.
            recoveredBlock60PC := 81.
        ].
        recoveredBlock60Step = 81 ifTrue: [
            recoveredBlock60Stack3 := recoveredBlock60Arg2.
            recoveredBlock60PC := 82.
        ].
        recoveredBlock60Step = 82 ifTrue: [
            recoveredBlock60Stack1 := (recoveredBlock60Stack1) at: (recoveredBlock60Stack2) put: (recoveredBlock60Stack3).
            recoveredBlock60PC := 84.
        ].
        recoveredBlock60Step = 84 ifTrue: [
            recoveredBlock60Result := recoveredBlock60Stack1.
            recoveredBlock60Done := true.
        ].
    ].
    recoveredBlock60Result
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := ASDPhysicalDerivedUnit.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := '*'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) ansiCName: (recoveredStack2) exponents: (recoveredStack3).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) factor: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) offset: (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2047be9c; bytecode file offset 0xd78798"
!ASDAbstractPhysicalUnit methodsFor: 'recovered'!
divWithPhysicalUnit: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgNoPhysicalUnit.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) exponents.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [:recoveredBlock23Arg1 :recoveredBlock23Arg2 | 
    | recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23Stack3 recoveredBlock23Stack4 recoveredBlock23Stack5 recoveredBlock23Stack6 recoveredBlock23Stack7 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
    recoveredBlock23Stack0 := self.
    recoveredBlock23PC := 30.
    recoveredBlock23Done := false.
    [recoveredBlock23Done not] whileTrue: [
        recoveredBlock23Step := recoveredBlock23PC.
        recoveredBlock23Step = 30 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal1.
            recoveredBlock23PC := 33.
        ].
        recoveredBlock23Step = 33 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Arg1.
            recoveredBlock23PC := 34.
        ].
        recoveredBlock23Step = 34 ifTrue: [
            recoveredBlock23Stack3 := recoveredBlock23Arg2.
            recoveredBlock23PC := 35.
        ].
        recoveredBlock23Step = 35 ifTrue: [
            recoveredBlock23Stack4 := recoveredArg1.
            recoveredBlock23PC := 38.
        ].
        recoveredBlock23Step = 38 ifTrue: [
            recoveredBlock23Stack4 := (recoveredBlock23Stack4) exponents.
            recoveredBlock23PC := 39.
        ].
        recoveredBlock23Step = 39 ifTrue: [
            recoveredBlock23Stack5 := recoveredBlock23Arg1.
            recoveredBlock23PC := 40.
        ].
        recoveredBlock23Step = 40 ifTrue: [
            recoveredBlock23Stack6 := [
    0
].
            recoveredBlock23PC := 42.
        ].
        recoveredBlock23Step = 42 ifTrue: [
            recoveredBlock23PC := 49.
        ].
        recoveredBlock23Step = 49 ifTrue: [
            recoveredBlock23Stack4 := (recoveredBlock23Stack4) at: (recoveredBlock23Stack5) ifAbsent: (recoveredBlock23Stack6).
            recoveredBlock23PC := 51.
        ].
        recoveredBlock23Step = 51 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) - (recoveredBlock23Stack4).
            recoveredBlock23PC := 52.
        ].
        recoveredBlock23Step = 52 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) at: (recoveredBlock23Stack2) put: (recoveredBlock23Stack3).
            recoveredBlock23PC := 54.
        ].
        recoveredBlock23Step = 54 ifTrue: [
            recoveredBlock23Result := recoveredBlock23Stack1.
            recoveredBlock23Done := true.
        ].
    ].
    recoveredBlock23Result
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) exponents.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := [:recoveredBlock61Arg1 :recoveredBlock61Arg2 | 
    | recoveredBlock61Stack0 recoveredBlock61Stack1 recoveredBlock61Stack2 recoveredBlock61Stack3 recoveredBlock61Stack4 recoveredBlock61PC recoveredBlock61Step recoveredBlock61Done recoveredBlock61Result |
    recoveredBlock61Stack0 := self.
    recoveredBlock61PC := 68.
    recoveredBlock61Done := false.
    [recoveredBlock61Done not] whileTrue: [
        recoveredBlock61Step := recoveredBlock61PC.
        recoveredBlock61Step = 68 ifTrue: [
            recoveredBlock61Stack1 := nil.
            recoveredBlock61PC := 69.
        ].
        recoveredBlock61Step = 69 ifTrue: [
            recoveredBlock61Stack2 := self.
            recoveredBlock61PC := 70.
        ].
        recoveredBlock61Step = 70 ifTrue: [
            recoveredBlock61Stack2 := (recoveredBlock61Stack2) exponents.
            recoveredBlock61PC := 71.
        ].
        recoveredBlock61Step = 71 ifTrue: [
            recoveredBlock61Stack3 := recoveredBlock61Arg1.
            recoveredBlock61PC := 72.
        ].
        recoveredBlock61Step = 72 ifTrue: [
            recoveredBlock61Stack2 := (recoveredBlock61Stack2) includesKey: (recoveredBlock61Stack3).
            recoveredBlock61PC := 74.
        ].
        recoveredBlock61Step = 74 ifTrue: [
            (recoveredBlock61Stack2) ifTrue: [recoveredBlock61PC := 88] ifFalse: [recoveredBlock61PC := 78].
        ].
        recoveredBlock61Step = 78 ifTrue: [
            recoveredBlock61PC := 79.
        ].
        recoveredBlock61Step = 79 ifTrue: [
            recoveredBlock61Stack1 := recoveredLocal1.
            recoveredBlock61PC := 82.
        ].
        recoveredBlock61Step = 82 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Arg1.
            recoveredBlock61PC := 83.
        ].
        recoveredBlock61Step = 83 ifTrue: [
            recoveredBlock61Stack3 := recoveredBlock61Arg2.
            recoveredBlock61PC := 84.
        ].
        recoveredBlock61Step = 84 ifTrue: [
            recoveredBlock61Stack3 := (recoveredBlock61Stack3) negated.
            recoveredBlock61PC := 86.
        ].
        recoveredBlock61Step = 86 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) at: (recoveredBlock61Stack2) put: (recoveredBlock61Stack3).
            recoveredBlock61PC := 88.
        ].
        recoveredBlock61Step = 88 ifTrue: [
            recoveredBlock61Result := recoveredBlock61Stack1.
            recoveredBlock61Done := true.
        ].
    ].
    recoveredBlock61Result
].
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := ASDPhysicalDerivedUnit.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := '/'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) ansiCName: (recoveredStack2) exponents: (recoveredStack3).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack1) factor: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack1) offset: (recoveredStack2).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

