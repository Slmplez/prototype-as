"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x200001ec; bytecode file offset 0x4b1b0"
!Collection methodsFor: 'recovered'!
rehash
    ^self
! !

"kernel.ic method 0x20000498; bytecode file offset 0x4b474"
!Collection methodsFor: 'recovered'!
isEmptyOrNil
    | recoveredValue0 |
    recoveredValue0 := (self) isEmpty.
    ^recoveredValue0
! !

"kernel.ic method 0x20001bd0; bytecode file offset 0x4ce64"
!Collection methodsFor: 'recovered'!
sorted
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) asArray.
    recoveredValue1 := (recoveredValue0) sorted.
    ^recoveredValue1
! !

"kernel.ic method 0x200021f0; bytecode file offset 0x4d118"
!Collection methodsFor: 'recovered'!
conform: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) allSatisfy: (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x20002340; bytecode file offset 0x4d394"
!Collection methodsFor: 'recovered'!
asSet
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Set.
    recoveredValue1 := (self) convertToClass: (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x20002380; bytecode file offset 0x4d394"
!Collection methodsFor: 'recovered'!
asOrderedCollection
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) convertToClass: (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x200023b0; bytecode file offset 0x4d394"
!Collection methodsFor: 'recovered'!
asByteArray
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (self) convertToArrayedClass: (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x20002410; bytecode file offset 0x4d394"
!Collection methodsFor: 'recovered'!
asArray
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) convertToArrayedClass: (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x20002460; bytecode file offset 0x4d394"
!Collection methodsFor: 'recovered'!
asSortedCollection
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SortedCollection.
    recoveredValue1 := (self) convertToClass: (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x20002470; bytecode file offset 0x4d394"
!Collection methodsFor: 'recovered'!
asBag
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Bag.
    recoveredValue1 := (self) convertToClass: (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x20002718; bytecode file offset 0x4d6ac"
!Collection methodsFor: 'recovered'!
copyAndGrow
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) growFactor.
    recoveredValue1 := (self) copyAndGrowBy: (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x20002838; bytecode file offset 0x4d79c"
!Collection methodsFor: 'recovered'!
shallowCopy
    | recoveredValue0 |
    recoveredValue0 := (self) copyAndGrowBy: (0).
    ^recoveredValue0
! !

"kernel.ic method 0x20002b78; bytecode file offset 0x4db00"
!Collection methodsFor: 'recovered'!
do: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"kernel.ic method 0x20002ba8; bytecode file offset 0x4db00"
!Collection methodsFor: 'recovered'!
add: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"kernel.ic method 0x20002ef0; bytecode file offset 0x4de00"
!Collection methodsFor: 'recovered'!
noneSatisfy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) anySatisfy: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) not.
    ^recoveredValue2
! !

"kernel.ic method 0x20003024; bytecode file offset 0x4dff8"
!Collection methodsFor: 'recovered'!
sorted: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) asArray.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) sorted: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x20003094; bytecode file offset 0x4dff8"
!Collection methodsFor: 'recovered'!
union: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) asSet.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x20003198; bytecode file offset 0x4e0b4"
!Collection methodsFor: 'recovered'!
remove: recoveredArg1 ifAbsent: recoveredArg2
    (self) subclassResponsibility.
    ^self
! !

"kernel.ic method 0x20003988; bytecode file offset 0x4e8a4"
!Collection methodsFor: 'recovered'!
isEmpty
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) size.
    recoveredValue1 := (recoveredValue0) == (0).
    ^recoveredValue1
! !

"kernel.ic method 0x200039ac; bytecode file offset 0x4e8bc"
!Collection methodsFor: 'recovered'!
notEmpty
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) size.
    recoveredValue1 := (recoveredValue0) ~~ (0).
    ^recoveredValue1
! !

"kernel.ic method 0x200045e8; bytecode file offset 0x4f5c4"
!Collection methodsFor: 'recovered'!
isCollection
    ^true
! !

"kernel.ic method 0x20004788; bytecode file offset 0x4f794"
!Collection methodsFor: 'recovered'!
isSequenceable
    ^false
! !

"kernel.ic method 0x20004964; bytecode file offset 0x4f870"
!Collection methodsFor: 'recovered'!
maxPrint
    ^1000
! !

"kernel.ic method 0x200059f4; bytecode file offset 0x50928"
!Collection methodsFor: 'recovered'!
printEtcOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPutAll: (' ...etc...').
    ^self
! !

"kernel.ic method 0x20005f40; bytecode file offset 0x50e6c"
!Collection methodsFor: 'recovered'!
errorNotFound
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ExCLDTObjectNotFound.
    recoveredValue1 := (self) objectNotFoundError.
    (recoveredValue0) signalWith: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x20006540; bytecode file offset 0x51450"
!Collection methodsFor: 'recovered'!
printSuffixOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPut: ($)).
    ^self
! !

"kernel.ic method 0x200065c0; bytecode file offset 0x514d4"
!Collection methodsFor: 'recovered'!
copyAndGrowBy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) growEmptyBy: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) addAll: (self).
    ^recoveredValue1
! !

"kernel.ic method 0x20006690; bytecode file offset 0x515a8"
!Collection methodsFor: 'recovered'!
growEmptyBy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) species.
    recoveredValue1 := (self) size.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) + (recoveredValue2).
    recoveredValue4 := (recoveredValue0) new: (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x20006eb8; bytecode file offset 0x51dcc"
!Collection methodsFor: 'recovered'!
growFactor
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) size.
    recoveredValue1 := (recoveredValue0) // (2).
    recoveredValue2 := (recoveredValue1) max: (8).
    ^recoveredValue2
! !

"kernel.ic method 0x200071d8; bytecode file offset 0x520ec"
!Collection methodsFor: 'recovered'!
copyWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) copyAndGrowBy: (1).
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) add: (recoveredValue2).
    ^recoveredValue0
! !

"kernel.ic method 0x2000720c; bytecode file offset 0x52188"
!Collection methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := IdentitySet.
    recoveredValue2 := (recoveredValue1) new.
    (self) printOn: (recoveredValue0) recursionSet: (recoveredValue2).
    ^self
! !

"kernel.ic method 0x20007220; bytecode file offset 0x52188"
!Collection methodsFor: 'recovered'!
storeOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Set.
    recoveredValue2 := (recoveredValue1) new.
    (self) storeOn: (recoveredValue0) recursionSet: (recoveredValue2).
    ^self
! !

"kernel.ic method 0x200073ac; bytecode file offset 0x522c4"
!Collection methodsFor: 'recovered'!
, recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := (self) copyAndGrowBy: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) addAll: (recoveredValue4).
    ^recoveredValue2
! !

"kernel.ic method 0x20008760; bytecode file offset 0x53678"
!Collection methodsFor: 'recovered'!
convertToClass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) size.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) addAll: (self).
    ^recoveredValue2
! !

"kernel.ic method 0x200099e4; bytecode file offset 0x54904"
!Collection methodsFor: 'recovered'!
objectNotFoundError
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := NlsCatKRN.
    recoveredValue1 := (recoveredValue0) indexedMsg: (35).
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) name.
    recoveredValue4 := (recoveredValue1) bindWith: (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x20009a10; bytecode file offset 0x54930"
!Collection methodsFor: 'recovered'!
recursionMessage
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := NlsCatKRN.
    recoveredValue1 := (recoveredValue0) indexedMsg: (36).
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) name.
    recoveredValue4 := (recoveredValue1) bindWith: (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x2000b37c; bytecode file offset 0x56298"
!Collection methodsFor: 'recovered'!
printPrefixOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) name.
    (recoveredValue1) nextPutAll: (recoveredValue3).
    (recoveredValue0) nextPut: ($().
    ^self
! !

"kernel.ic method 0x2000b408; bytecode file offset 0x56384"
!Collection methodsFor: 'recovered'!
detect: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [
    | block280083c4Value0 block280083c4Value1 |
    block280083c4Value0 := ExCLDTObjectNotFound.
    block280083c4Value1 := (block280083c4Value0) signal.
    block280083c4Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000b438; bytecode file offset 0x56384"
!Collection methodsFor: 'recovered'!
remove: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [
    | block2800840cValue0 block2800840cValue1 |
    block2800840cValue0 := ExCLDTObjectNotFound.
    block2800840cValue1 := (block2800840cValue0) signal.
    block2800840cValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) remove: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000b4dc; bytecode file offset 0x563f0"
!Collection methodsFor: 'recovered'!
removeAll: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) remove: (recoveredBlock5Value0).
    recoveredBlock5Value1
].
    recoveredValue2 := (recoveredValue0) do: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x2000bd20; bytecode file offset 0x56c34"
!Collection methodsFor: 'recovered'!
addAll: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (self) add: (recoveredBlock6Value0).
    recoveredBlock6Value1
].
    (recoveredValue1) do: (recoveredValue2).
    ^recoveredValue0
! !

"kernel.ic method 0x2000d344; bytecode file offset 0x58270"
!Collection methodsFor: 'recovered'!
intersection: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) asSet.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredArg1.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) includes: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    recoveredValue2 := (recoveredValue0) select: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x2000d358; bytecode file offset 0x58270"
!Collection methodsFor: 'recovered'!
difference: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) asSet.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredArg1.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) includes: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    recoveredValue2 := (recoveredValue0) reject: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x2000e668; bytecode file offset 0x5958c"
!Collection methodsFor: 'recovered'!
asSortedCollection: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SortedCollection.
    recoveredValue1 := (self) size.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) sortBlock: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) isSorted: (true).
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) addAll: (self).
    ^recoveredValue2
! !

"kernel.ic method 0x20011770; bytecode file offset 0x5c684"
!Collection methodsFor: 'recovered'!
anySatisfy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Arg1.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) value: (recoveredBlock4Stack3).
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 20] ifFalse: [recoveredBlock4PC := 23].
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack1 := true.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            ^recoveredBlock4Stack1
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (self) do: (recoveredValue0).
    ^false
! !

"kernel.ic method 0x2001179c; bytecode file offset 0x5c6b0"
!Collection methodsFor: 'recovered'!
allSatisfy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Arg1.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) value: (recoveredBlock4Stack3).
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 23] ifFalse: [recoveredBlock4PC := 20].
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack1 := false.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            ^recoveredBlock4Stack1
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (self) do: (recoveredValue0).
    ^true
! !

"kernel.ic method 0x200117c8; bytecode file offset 0x5c6d8"
!Collection methodsFor: 'recovered'!
includes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Arg1.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Stack3 := recoveredArg1.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) = (recoveredBlock4Stack3).
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 20] ifFalse: [recoveredBlock4PC := 23].
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack1 := true.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            ^recoveredBlock4Stack1
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (self) do: (recoveredValue0).
    ^false
! !

"kernel.ic method 0x20013314; bytecode file offset 0x5e22c"
!Collection methodsFor: 'recovered'!
detect: recoveredArg1 ifNone: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Arg1.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) value: (recoveredBlock4Stack3).
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 20] ifFalse: [recoveredBlock4PC := 23].
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Arg1.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            ^recoveredBlock4Stack1
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (self) do: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) value.
    ^recoveredValue2
! !

"kernel.ic method 0x200134c4; bytecode file offset 0x5e3f8"
!Collection methodsFor: 'recovered'!
deepCopy
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) growEmptyBy: (0).
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) copy.
    recoveredBlock11Value3 := (recoveredBlock11Value0) add: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    (self) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"kernel.ic method 0x20014754; bytecode file offset 0x5f67c"
!Collection methodsFor: 'recovered'!
printOn: recoveredArg1 recursionSet: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) recursiveAccessCheck: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) recursionMessage.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) printPrefixOn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) printElementsOn: (recoveredStack2) recursionSet: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) printSuffixOn: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) recursiveAccessClear: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x200149dc; bytecode file offset 0x5f8f8"
!Collection methodsFor: 'recovered'!
collect: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) growEmptyBy: (0).
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredArg1.
    recoveredBlock11Value2 := recoveredBlock11Arg1.
    recoveredBlock11Value3 := (recoveredBlock11Value1) value: (recoveredBlock11Value2).
    recoveredBlock11Value4 := (recoveredBlock11Value0) add: (recoveredBlock11Value3).
    recoveredBlock11Value4
].
    (self) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"kernel.ic method 0x200157cc; bytecode file offset 0x606e0"
!Collection methodsFor: 'recovered'!
inject: recoveredArg1 into: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 |
    recoveredBlock10Value0 := recoveredArg2.
    recoveredBlock10Value1 := recoveredLocal1.
    recoveredBlock10Value2 := recoveredBlock10Arg1.
    recoveredBlock10Value3 := (recoveredBlock10Value0) value: (recoveredBlock10Value1) value: (recoveredBlock10Value2).
    recoveredBlock10Value4 := recoveredBlock10Value3.
    recoveredLocal1 := recoveredBlock10Value4.
    recoveredBlock10Value3
].
    (self) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"kernel.ic method 0x200174e0; bytecode file offset 0x623fc"
!Collection methodsFor: 'recovered'!
select: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) growEmptyBy: (0).
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := recoveredArg1.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Arg1.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) value: (recoveredBlock11Stack3).
            recoveredBlock11PC := 24.
        ].
        recoveredBlock11Step = 24 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 28] ifFalse: [recoveredBlock11PC := 34].
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) add: (recoveredBlock11Stack2).
            recoveredBlock11PC := 34.
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (self) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"kernel.ic method 0x20017524; bytecode file offset 0x62440"
!Collection methodsFor: 'recovered'!
reject: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) growEmptyBy: (0).
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := recoveredArg1.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Arg1.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) value: (recoveredBlock11Stack3).
            recoveredBlock11PC := 24.
        ].
        recoveredBlock11Step = 24 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 34] ifFalse: [recoveredBlock11PC := 28].
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) add: (recoveredBlock11Stack2).
            recoveredBlock11PC := 34.
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (self) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"kernel.ic method 0x20017b84; bytecode file offset 0x62a94"
!Collection methodsFor: 'recovered'!
occurrencesOf: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredLocal1 := 0.
    recoveredValue0 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9Stack4 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := nil.
            recoveredBlock9PC := 17.
        ].
        recoveredBlock9Step = 17 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Arg1.
            recoveredBlock9PC := 18.
        ].
        recoveredBlock9Step = 18 ifTrue: [
            recoveredBlock9Stack3 := recoveredArg1.
            recoveredBlock9PC := 21.
        ].
        recoveredBlock9Step = 21 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) = (recoveredBlock9Stack3).
            recoveredBlock9PC := 22.
        ].
        recoveredBlock9Step = 22 ifTrue: [
            (recoveredBlock9Stack2) ifTrue: [recoveredBlock9PC := 26] ifFalse: [recoveredBlock9PC := 35].
        ].
        recoveredBlock9Step = 26 ifTrue: [
            recoveredBlock9PC := 27.
        ].
        recoveredBlock9Step = 27 ifTrue: [
            recoveredBlock9Stack1 := recoveredLocal1.
            recoveredBlock9PC := 30.
        ].
        recoveredBlock9Step = 30 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) + (1).
            recoveredBlock9PC := 31.
        ].
        recoveredBlock9Step = 31 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Stack1.
            recoveredBlock9PC := 32.
        ].
        recoveredBlock9Step = 32 ifTrue: [
            recoveredLocal1 := recoveredBlock9Stack2.
            recoveredBlock9PC := 35.
        ].
        recoveredBlock9Step = 35 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack1.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
    (self) do: (recoveredValue0).
    recoveredValue1 := recoveredLocal1.
    ^recoveredValue1
! !

"kernel.ic method 0x20018c00; bytecode file offset 0x63b1c"
!Collection methodsFor: 'recovered'!
convertToArrayedClass: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) size.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredLocal1 := 0.
    recoveredValue3 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 recoveredBlock18Value5 |
    recoveredBlock18Value0 := recoveredLocal2.
    recoveredBlock18Value1 := recoveredLocal1.
    recoveredBlock18Value2 := (recoveredBlock18Value1) + (1).
    recoveredBlock18Value3 := recoveredBlock18Value2.
    recoveredLocal1 := recoveredBlock18Value3.
    recoveredBlock18Value4 := recoveredBlock18Arg1.
    recoveredBlock18Value5 := (recoveredBlock18Value0) at: (recoveredBlock18Value2) put: (recoveredBlock18Value4).
    recoveredBlock18Value5
].
    (self) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal2.
    ^recoveredValue4
! !

"kernel.ic method 0x2001be38; bytecode file offset 0x66d54"
!Collection methodsFor: 'recovered'!
do: recoveredArg1 separatedBy: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) size.
    recoveredLocal1 := recoveredValue0.
    recoveredLocal2 := 0.
    recoveredValue1 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (1).
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredLocal2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 27.
        ].
        recoveredBlock14Step = 27 ifTrue: [
            recoveredBlock14Stack1 := recoveredArg1.
            recoveredBlock14PC := 30.
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 31.
        ].
        recoveredBlock14Step = 31 ifTrue: [
            (recoveredBlock14Stack1) value: (recoveredBlock14Stack2).
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 34.
        ].
        recoveredBlock14Step = 34 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal2.
            recoveredBlock14PC := 37.
        ].
        recoveredBlock14Step = 37 ifTrue: [
            recoveredBlock14Stack3 := recoveredLocal1.
            recoveredBlock14PC := 40.
        ].
        recoveredBlock14Step = 40 ifTrue: [
            (recoveredBlock14Stack2 == recoveredBlock14Stack3) ifTrue: [recoveredBlock14PC := 49] ifFalse: [recoveredBlock14PC := 44].
        ].
        recoveredBlock14Step = 44 ifTrue: [
            recoveredBlock14PC := 45.
        ].
        recoveredBlock14Step = 45 ifTrue: [
            recoveredBlock14Stack1 := recoveredArg2.
            recoveredBlock14PC := 48.
        ].
        recoveredBlock14Step = 48 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) value.
            recoveredBlock14PC := 49.
        ].
        recoveredBlock14Step = 49 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (self) do: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x2001d878; bytecode file offset 0x6879c"
!Collection methodsFor: 'recovered'!
printElementsOn: recoveredArg1 recursionSet: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) position.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := recoveredArg1.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) position.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack2 := recoveredLocal1.
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) - (recoveredBlock11Stack2).
            recoveredBlock11PC := 26.
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11Stack2 := self.
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) maxPrint.
            recoveredBlock11PC := 28.
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) > (recoveredBlock11Stack2).
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 32] ifFalse: [recoveredBlock11PC := 38].
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            recoveredBlock11Stack2 := recoveredArg1.
            recoveredBlock11PC := 36.
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) printEtcOn: (recoveredBlock11Stack2).
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            ^recoveredBlock11Stack1
        ].
        recoveredBlock11Step = 38 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 39.
        ].
        recoveredBlock11Step = 39 ifTrue: [
            recoveredBlock11Stack2 := recoveredArg1.
            recoveredBlock11PC := 42.
        ].
        recoveredBlock11Step = 42 ifTrue: [
            recoveredBlock11Stack3 := recoveredArg2.
            recoveredBlock11PC := 45.
        ].
        recoveredBlock11Step = 45 ifTrue: [
            (recoveredBlock11Stack1) printOn: (recoveredBlock11Stack2) recursionSet: (recoveredBlock11Stack3).
            recoveredBlock11PC := 47.
        ].
        recoveredBlock11Step = 47 ifTrue: [
            recoveredBlock11Stack1 := recoveredArg1.
            recoveredBlock11PC := 50.
        ].
        recoveredBlock11Step = 50 ifTrue: [
            recoveredBlock11Stack2 := $ .
            recoveredBlock11PC := 54.
        ].
        recoveredBlock11Step = 54 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) nextPut: (recoveredBlock11Stack2).
            recoveredBlock11PC := 56.
        ].
        recoveredBlock11Step = 56 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (self) do: (recoveredValue2).
    ^self
! !

"kernel.ic method 0x20028050; bytecode file offset 0x72fac"
!Collection methodsFor: 'recovered'!
storeOn: recoveredArg1 recursionSet: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) recursiveAccessCheck: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := ExCLDTRecursiveStoreOnError.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) signal.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := '(('.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := ' new'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVariable.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := ': '.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := $).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := [:recoveredBlock69Arg1 | 
    | recoveredBlock69Value0 recoveredBlock69Value1 recoveredBlock69Value2 recoveredBlock69Value3 recoveredBlock69Value4 recoveredBlock69Value5 recoveredBlock69Value6 recoveredBlock69Value7 |
    recoveredBlock69Value0 := recoveredArg1.
    recoveredBlock69Value1 := recoveredBlock69Value0.
    (recoveredBlock69Value1) cr.
    recoveredBlock69Value2 := recoveredBlock69Value0.
    (recoveredBlock69Value2) tab.
    (recoveredBlock69Value0) nextPutAll: ('add: ').
    recoveredBlock69Value3 := recoveredBlock69Arg1.
    recoveredBlock69Value4 := recoveredArg1.
    recoveredBlock69Value5 := recoveredArg2.
    (recoveredBlock69Value3) storeOn: (recoveredBlock69Value4) recursionSet: (recoveredBlock69Value5).
    recoveredBlock69Value6 := recoveredArg1.
    recoveredBlock69Value7 := (recoveredBlock69Value6) nextPut: ($;).
    recoveredBlock69Value7
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) recursiveAccessClear: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack1) tab.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := 'yourself)'.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

