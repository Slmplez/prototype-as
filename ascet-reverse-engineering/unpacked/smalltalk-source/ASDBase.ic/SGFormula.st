"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006a5e4; bytecode file offset 0x967a18"
!SGFormula methodsFor: 'recovered'!
owner
    | recoveredValue0 |
    recoveredValue0 := owner.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009cbc4; bytecode file offset 0x999628"
!SGFormula methodsFor: 'recovered'!
initializeIdentifiers
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) identifiers: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bd17c; bytecode file offset 0x9b9a3c"
!SGFormula methodsFor: 'recovered'!
removeIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) identifiers.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) remove: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) notNil.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200c17a4; bytecode file offset 0x9beac8"
!SGFormula methodsFor: 'recovered'!
owner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    owner := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f792c; bytecode file offset 0x9f4e38"
!SGFormula methodsFor: 'recovered'!
getIdentifierNamens
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) identifiers.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c4bc0Arg1 | 
    | block280c4bc0Value0 block280c4bc0Value1 |
    block280c4bc0Value0 := block280c4bc0Arg1.
    block280c4bc0Value1 := (block280c4bc0Value0) identifier.
    block280c4bc0Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20112904; bytecode file offset 0xa0f1c0"
!SGFormula methodsFor: 'recovered'!
getAPIHandle
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) apiClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFor: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2019b574; bytecode file offset 0xa97e3c"
!SGFormula methodsFor: 'recovered'!
addIdentifierUnvalidated: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkIdentifier: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := SGIdentifier.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) identifiers.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e298c; bytecode file offset 0xadf25c"
!SGFormula methodsFor: 'recovered'!
containsBuggyExponent
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_64328'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) esFormula.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := ')exponent'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) includesSubstring: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'exp('.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesSubstring: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201f6c28; bytecode file offset 0xaf34e8"
!SGFormula methodsFor: 'recovered'!
getIdentifierForAliasName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) identifiers.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
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
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) aliasName.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg1.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) = (recoveredBlock5Stack3).
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 22] ifFalse: [recoveredBlock5PC := 25].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x202305e4; bytecode file offset 0xb2ceb8"
!SGFormula methodsFor: 'recovered'!
isIdentity
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) identifiers.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) esFormula.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := '('.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) identifiers.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) identifier.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := ')'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20238424; bytecode file offset 0xb34cf0"
!SGFormula methodsFor: 'recovered'!
addIdentifier: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) buildValidANSICIdentifier.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
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
            recoveredStack0 := (recoveredStack0) checkIdentifier: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := SGIdentifier.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) identifiers.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024837c; bytecode file offset 0xb44c48"
!SGFormula methodsFor: 'recovered'!
containsBooleanOperator
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) esFormula.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := 'greater'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) includesSubstring: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) esFormula.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := 'smaller'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) includesSubstring: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) esFormula.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := 'equal'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) includesSubstring: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) esFormula.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 'not'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesSubstring: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20263f04; bytecode file offset 0xb607e8"
!SGFormula methodsFor: 'recovered'!
copy
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := SGFormula.
    recoveredValue1 := (self) owner.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) formulaBasic.
    recoveredValue5 := (recoveredValue4) copy.
    (recoveredValue3) formula: (recoveredValue5).
    recoveredValue6 := ('Kk') == ('Call_72103').
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (self) esFormula.
    recoveredValue9 := (recoveredValue8) copy.
    (recoveredValue7) esFormula: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (self) copyIdentifiers.
    (recoveredValue10) identifiers: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

"ASDBase.ic method 0x202ee7b4; bytecode file offset 0xbeb098"
!SGFormula methodsFor: 'recovered'!
copyIdentifiers
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) identifiers.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Local1 recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 recoveredBlock11Value7 recoveredBlock11Value8 recoveredBlock11Value9 recoveredBlock11Value10 recoveredBlock11Value11 recoveredBlock11Value12 |
    recoveredBlock11Value0 := SGIdentifier.
    recoveredBlock11Value1 := (recoveredBlock11Value0) create.
    recoveredBlock11Local1 := recoveredBlock11Value1.
    recoveredBlock11Value2 := recoveredBlock11Local1.
    recoveredBlock11Value3 := recoveredBlock11Arg1.
    recoveredBlock11Value4 := (recoveredBlock11Value3) aliasName.
    recoveredBlock11Value5 := (recoveredBlock11Value4) copy.
    (recoveredBlock11Value2) aliasName: (recoveredBlock11Value5).
    recoveredBlock11Value6 := recoveredBlock11Local1.
    recoveredBlock11Value7 := recoveredBlock11Arg1.
    recoveredBlock11Value8 := (recoveredBlock11Value7) identifier.
    recoveredBlock11Value9 := (recoveredBlock11Value8) copy.
    (recoveredBlock11Value6) identifier: (recoveredBlock11Value9).
    recoveredBlock11Value10 := recoveredLocal1.
    recoveredBlock11Value11 := recoveredBlock11Local1.
    recoveredBlock11Value12 := (recoveredBlock11Value10) add: (recoveredBlock11Value11).
    recoveredBlock11Value12
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x203090a4; bytecode file offset 0xc05978"
!SGFormula methodsFor: 'recovered'!
evaluateFormula: recoveredArg1 value: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 :recoveredBlock13Arg2 | 
    | recoveredBlock13Local1 recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) isString.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 32] ifFalse: [recoveredBlock13PC := 26].
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) identifier.
            recoveredBlock13PC := 28.
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 29.
        ].
        recoveredBlock13Step = 29 ifTrue: [
            recoveredBlock13PC := 34.
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 33 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 34.
        ].
        recoveredBlock13Step = 34 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 37.
        ].
        recoveredBlock13Step = 37 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local1.
            recoveredBlock13PC := 38.
        ].
        recoveredBlock13Step = 38 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg2.
            recoveredBlock13PC := 39.
        ].
        recoveredBlock13Step = 39 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2) put: (recoveredBlock13Stack3).
            recoveredBlock13PC := 41.
        ].
        recoveredBlock13Step = 41 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue2) keysAndValuesDo: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := super evaluateFormula: (recoveredValue4) value: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2042607c; bytecode file offset 0xd2297c"
!SGFormula methodsFor: 'recovered'!
writeXML: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'Formula'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'Call_72103'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'code'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) formula.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) string: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := identifiers.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 97].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := identifiers.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := [:block280fcb40Arg1 :block280fcb40Arg2 | 
    | block280fcb40Value0 block280fcb40Value1 block280fcb40Value2 block280fcb40Value3 block280fcb40Value4 |
    block280fcb40Value0 := block280fcb40Arg1.
    block280fcb40Value1 := (block280fcb40Value0) identifier.
    block280fcb40Value2 := block280fcb40Arg2.
    block280fcb40Value3 := (block280fcb40Value2) identifier.
    block280fcb40Value4 := (block280fcb40Value1) < (block280fcb40Value3).
    block280fcb40Value4
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := [:recoveredBlock56Arg1 | 
    | recoveredBlock56Value0 recoveredBlock56Value1 recoveredBlock56Value2 recoveredBlock56Value3 recoveredBlock56Value4 recoveredBlock56Value5 recoveredBlock56Value6 recoveredBlock56Value7 recoveredBlock56Value8 |
    recoveredBlock56Value0 := recoveredArg1.
    (recoveredBlock56Value0) openComplex: ('Formal').
    recoveredBlock56Value1 := recoveredArg1.
    recoveredBlock56Value2 := recoveredBlock56Arg1.
    recoveredBlock56Value3 := (recoveredBlock56Value2) identifier.
    (recoveredBlock56Value1) attr: ('name') nmToken: (recoveredBlock56Value3).
    recoveredBlock56Value4 := recoveredArg1.
    recoveredBlock56Value5 := recoveredBlock56Arg1.
    recoveredBlock56Value6 := (recoveredBlock56Value5) aliasName.
    (recoveredBlock56Value4) attr: ('OID') localId: (recoveredBlock56Value6).
    recoveredBlock56Value7 := recoveredArg1.
    recoveredBlock56Value8 := (recoveredBlock56Value7) closeComplex.
    recoveredBlock56Value8
].
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) closeComplex.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205042ec; bytecode file offset 0xe00c04"
!SGFormula methodsFor: 'recovered'!
eliminateIdentifiers
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ReadWriteStream.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) identifiers.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Local1 recoveredBlock26Stack0 recoveredBlock26Stack1 recoveredBlock26Stack2 recoveredBlock26Stack3 recoveredBlock26PC recoveredBlock26Step recoveredBlock26Done recoveredBlock26Result |
    recoveredBlock26Stack0 := self.
    recoveredBlock26PC := 32.
    recoveredBlock26Done := false.
    [recoveredBlock26Done not] whileTrue: [
        recoveredBlock26Step := recoveredBlock26PC.
        recoveredBlock26Step = 32 ifTrue: [
            recoveredBlock26Stack0 := (recoveredBlock26Stack0) leftBracket.
            recoveredBlock26PC := 34.
        ].
        recoveredBlock26Step = 34 ifTrue: [
            recoveredBlock26Stack0 := (recoveredBlock26Stack0) asString.
            recoveredBlock26PC := 36.
        ].
        recoveredBlock26Step = 36 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Arg1.
            recoveredBlock26PC := 37.
        ].
        recoveredBlock26Step = 37 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) identifier.
            recoveredBlock26PC := 39.
        ].
        recoveredBlock26Step = 39 ifTrue: [
            recoveredBlock26Stack0 := (recoveredBlock26Stack0) , (recoveredBlock26Stack1).
            recoveredBlock26PC := 41.
        ].
        recoveredBlock26Step = 41 ifTrue: [
            recoveredBlock26Stack1 := self.
            recoveredBlock26PC := 42.
        ].
        recoveredBlock26Step = 42 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) rightBracket.
            recoveredBlock26PC := 44.
        ].
        recoveredBlock26Step = 44 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) asString.
            recoveredBlock26PC := 46.
        ].
        recoveredBlock26Step = 46 ifTrue: [
            recoveredBlock26Stack0 := (recoveredBlock26Stack0) , (recoveredBlock26Stack1).
            recoveredBlock26PC := 48.
        ].
        recoveredBlock26Step = 48 ifTrue: [
            recoveredBlock26Local1 := recoveredBlock26Stack0.
            recoveredBlock26PC := 49.
        ].
        recoveredBlock26Step = 49 ifTrue: [
            recoveredBlock26Stack0 := self.
            recoveredBlock26PC := 50.
        ].
        recoveredBlock26Step = 50 ifTrue: [
            recoveredBlock26Stack0 := (recoveredBlock26Stack0) esFormula.
            recoveredBlock26PC := 52.
        ].
        recoveredBlock26Step = 52 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Local1.
            recoveredBlock26PC := 53.
        ].
        recoveredBlock26Step = 53 ifTrue: [
            recoveredBlock26Stack2 := 1.
            recoveredBlock26PC := 55.
        ].
        recoveredBlock26Step = 55 ifTrue: [
            recoveredBlock26Stack0 := (recoveredBlock26Stack0) indexOfSubCollection: (recoveredBlock26Stack1) startingAt: (recoveredBlock26Stack2).
            recoveredBlock26PC := 57.
        ].
        recoveredBlock26Step = 57 ifTrue: [
            recoveredBlock26Stack1 := 0.
            recoveredBlock26PC := 59.
        ].
        recoveredBlock26Step = 59 ifTrue: [
            recoveredBlock26Stack0 := (recoveredBlock26Stack0) > (recoveredBlock26Stack1).
            recoveredBlock26PC := 60.
        ].
        recoveredBlock26Step = 60 ifTrue: [
            (recoveredBlock26Stack0) ifTrue: [recoveredBlock26PC := 64] ifFalse: [recoveredBlock26PC := 74].
        ].
        recoveredBlock26Step = 64 ifTrue: [
            recoveredBlock26Stack0 := recoveredLocal4.
            recoveredBlock26PC := 67.
        ].
        recoveredBlock26Step = 67 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Arg1.
            recoveredBlock26PC := 68.
        ].
        recoveredBlock26Step = 68 ifTrue: [
            recoveredBlock26Stack0 := (recoveredBlock26Stack0) add: (recoveredBlock26Stack1).
            recoveredBlock26PC := 70.
        ].
        recoveredBlock26Step = 70 ifTrue: [
            recoveredBlock26PC := 132.
        ].
        recoveredBlock26Step = 74 ifTrue: [
            recoveredBlock26Stack0 := recoveredLocal1.
            recoveredBlock26PC := 77.
        ].
        recoveredBlock26Step = 77 ifTrue: [
            recoveredBlock26Stack0 := (recoveredBlock26Stack0) + (1).
            recoveredBlock26PC := 78.
        ].
        recoveredBlock26Step = 78 ifTrue: [
            recoveredLocal1 := recoveredBlock26Stack0.
            recoveredBlock26PC := 81.
        ].
        recoveredBlock26Step = 81 ifTrue: [
            recoveredBlock26Stack0 := recoveredLocal1.
            recoveredBlock26PC := 84.
        ].
        recoveredBlock26Step = 84 ifTrue: [
            recoveredBlock26Stack1 := 11.
            recoveredBlock26PC := 86.
        ].
        recoveredBlock26Step = 86 ifTrue: [
            recoveredBlock26Stack0 := (recoveredBlock26Stack0) = (recoveredBlock26Stack1).
            recoveredBlock26PC := 87.
        ].
        recoveredBlock26Step = 87 ifTrue: [
            (recoveredBlock26Stack0) ifTrue: [recoveredBlock26PC := 90] ifFalse: [recoveredBlock26PC := 97].
        ].
        recoveredBlock26Step = 90 ifTrue: [
            recoveredBlock26Stack0 := recoveredLocal2.
            recoveredBlock26PC := 93.
        ].
        recoveredBlock26Step = 93 ifTrue: [
            recoveredBlock26Stack1 := '.....'.
            recoveredBlock26PC := 95.
        ].
        recoveredBlock26Step = 95 ifTrue: [
            (recoveredBlock26Stack0) nextPutAll: (recoveredBlock26Stack1).
            recoveredBlock26PC := 97.
        ].
        recoveredBlock26Step = 97 ifTrue: [
            recoveredBlock26Stack0 := nil.
            recoveredBlock26PC := 98.
        ].
        recoveredBlock26Step = 98 ifTrue: [
            recoveredBlock26Stack1 := recoveredLocal1.
            recoveredBlock26PC := 101.
        ].
        recoveredBlock26Step = 101 ifTrue: [
            recoveredBlock26Stack2 := 10.
            recoveredBlock26PC := 103.
        ].
        recoveredBlock26Step = 103 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) > (recoveredBlock26Stack2).
            recoveredBlock26PC := 104.
        ].
        recoveredBlock26Step = 104 ifTrue: [
            (recoveredBlock26Stack1) ifTrue: [recoveredBlock26PC := 132] ifFalse: [recoveredBlock26PC := 108].
        ].
        recoveredBlock26Step = 108 ifTrue: [
            recoveredBlock26PC := 109.
        ].
        recoveredBlock26Step = 109 ifTrue: [
            recoveredBlock26Stack0 := recoveredLocal2.
            recoveredBlock26PC := 112.
        ].
        recoveredBlock26Step = 112 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Stack0.
            recoveredBlock26PC := 113.
        ].
        recoveredBlock26Step = 113 ifTrue: [
            recoveredBlock26Stack2 := $'.
            recoveredBlock26PC := 116.
        ].
        recoveredBlock26Step = 116 ifTrue: [
            (recoveredBlock26Stack1) nextPut: (recoveredBlock26Stack2).
            recoveredBlock26Stack1 := recoveredBlock26Stack0.
            recoveredBlock26PC := 119.
        ].
        recoveredBlock26Step = 119 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Arg1.
            recoveredBlock26PC := 120.
        ].
        recoveredBlock26Step = 120 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) identifier.
            recoveredBlock26PC := 122.
        ].
        recoveredBlock26Step = 122 ifTrue: [
            (recoveredBlock26Stack1) nextPutAll: (recoveredBlock26Stack2).
            recoveredBlock26Stack1 := recoveredBlock26Stack0.
            recoveredBlock26PC := 125.
        ].
        recoveredBlock26Step = 125 ifTrue: [
            recoveredBlock26Stack2 := $'.
            recoveredBlock26PC := 128.
        ].
        recoveredBlock26Step = 128 ifTrue: [
            (recoveredBlock26Stack1) nextPut: (recoveredBlock26Stack2).
            recoveredBlock26PC := 130.
        ].
        recoveredBlock26Step = 130 ifTrue: [
            recoveredBlock26Stack0 := (recoveredBlock26Stack0) cr.
            recoveredBlock26PC := 132.
        ].
        recoveredBlock26Step = 132 ifTrue: [
            recoveredBlock26Result := recoveredBlock26Stack0.
            recoveredBlock26Done := true.
        ].
    ].
    recoveredBlock26Result
].
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) identifiers.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) identifiers: (recoveredStack1).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := (recoveredStack0) identifiers.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 162] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := ETASFormulaError.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := ErrorDeleteIds.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

