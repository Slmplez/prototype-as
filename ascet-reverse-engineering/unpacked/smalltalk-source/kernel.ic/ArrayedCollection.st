"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20002b6c; bytecode file offset 0x4db00"
!ArrayedCollection methodsFor: 'recovered'!
add: recoveredArg1
    (self) shouldNotImplement.
    ^self
! !

"kernel.ic method 0x20003174; bytecode file offset 0x4e0b4"
!ArrayedCollection methodsFor: 'recovered'!
remove: recoveredArg1 ifAbsent: recoveredArg2
    (self) shouldNotImplement.
    ^self
! !

"kernel.ic method 0x20006528; bytecode file offset 0x51438"
!ArrayedCollection methodsFor: 'recovered'!
printPrefixOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPut: ($().
    ^self
! !

"kernel.ic method 0x20007ea0; bytecode file offset 0x52dbc"
!ArrayedCollection methodsFor: 'recovered'!
from: recoveredArg1 to: recoveredArg2 do: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) apply: (self) from: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"kernel.ic method 0x20007eac; bytecode file offset 0x52dbc"
!ArrayedCollection methodsFor: 'recovered'!
from: recoveredArg1 to: recoveredArg2 doWithIndex: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) applyWithIndex: (self) from: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"kernel.ic method 0x20009564; bytecode file offset 0x544a8"
!ArrayedCollection methodsFor: 'recovered'!
addToOrderedCollection: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) size.
    (recoveredValue0) addArray: (self) from: (1) to: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x20009574; bytecode file offset 0x544a8"
!ArrayedCollection methodsFor: 'recovered'!
doWithIndex: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) size.
    (recoveredValue0) applyWithIndex: (self) from: (1) to: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x20009584; bytecode file offset 0x544a8"
!ArrayedCollection methodsFor: 'recovered'!
addFirstToOrderedCollection: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) size.
    (recoveredValue0) addArrayFirst: (self) from: (1) to: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x20009594; bytecode file offset 0x544a8"
!ArrayedCollection methodsFor: 'recovered'!
do: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) size.
    (recoveredValue0) apply: (self) from: (1) to: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x2000a160; bytecode file offset 0x55074"
!ArrayedCollection methodsFor: 'recovered'!
addToOrderedCollection: recoveredArg1 atIndex: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) size.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) addArray: (self) from: (1) to: (recoveredValue1) atIndex: (recoveredValue2).
    ^self
! !

"kernel.ic method 0x2000b580; bytecode file offset 0x564ac"
!ArrayedCollection methodsFor: 'recovered'!
sort: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) asSortedCollection: (recoveredValue0).
    recoveredValue2 := (self) size.
    recoveredValue3 := (recoveredValue1) replaceArray: (self) from: (1) to: (recoveredValue2) startingAt: (1).
    ^recoveredValue3
! !

"kernel.ic method 0x2000ba38; bytecode file offset 0x5694c"
!ArrayedCollection methodsFor: 'recovered'!
sort
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280084c0Arg1 :block280084c0Arg2 | 
    | block280084c0Value0 block280084c0Value1 block280084c0Value2 |
    block280084c0Value0 := block280084c0Arg1.
    block280084c0Value1 := block280084c0Arg2.
    block280084c0Value2 := (block280084c0Value0) <= (block280084c0Value1).
    block280084c0Value2
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) sort: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000c774; bytecode file offset 0x5768c"
!ArrayedCollection methodsFor: 'recovered'!
convertToArrayedClass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) size.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredValue3 := (self) size.
    recoveredValue4 := (recoveredValue2) replaceFrom: (1) to: (recoveredValue3) with: (self) startingAt: (1).
    ^recoveredValue4
! !

"kernel.ic method 0x2000cce8; bytecode file offset 0x57c04"
!ArrayedCollection methodsFor: 'recovered'!
asOrderedCollection
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) size.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue1).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue3) addArray: (self) from: (1) to: (recoveredValue4).
    ^recoveredValue5
! !

"kernel.ic method 0x2000eb40; bytecode file offset 0x59a5c"
!ArrayedCollection methodsFor: 'recovered'!
copyAndGrowBy: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) species.
    recoveredValue1 := (self) size.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue1) + (recoveredValue3).
    recoveredValue5 := (recoveredValue0) new: (recoveredValue4).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue5) replaceFrom: (1) to: (recoveredValue6) with: (self) startingAt: (1).
    ^recoveredValue7
! !

"kernel.ic method 0x20014720; bytecode file offset 0x5f634"
!ArrayedCollection methodsFor: 'recovered'!
includes: recoveredArg1
    | recoveredValue0 recoveredValue1 |
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
    recoveredValue1 := (self) size.
    (recoveredValue0) apply: (self) from: (1) to: (recoveredValue1).
    ^false
! !

"kernel.ic method 0x20014d34; bytecode file offset 0x5fc4c"
!ArrayedCollection methodsFor: 'recovered'!
findFirst: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [:recoveredBlock4Arg1 :recoveredBlock4Arg2 | 
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
            recoveredBlock4Stack1 := recoveredBlock4Arg2.
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
    recoveredValue1 := (self) size.
    (recoveredValue0) applyWithIndex: (self) from: (1) to: (recoveredValue1).
    ^0
! !

"kernel.ic method 0x200151fc; bytecode file offset 0x60118"
!ArrayedCollection methodsFor: 'recovered'!
, recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := (self) species.
    recoveredValue1 := (self) size.
    recoveredValue2 := recoveredValue1.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := (recoveredValue1) + (recoveredValue4).
    recoveredValue6 := recoveredValue5.
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := (recoveredValue0) new: (recoveredValue5).
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := recoveredLocal2.
    (recoveredValue8) replaceFrom: (1) to: (recoveredValue9) with: (self) startingAt: (1).
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := (recoveredValue10) + (1).
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue7) replaceFrom: (recoveredValue11) to: (recoveredValue12) with: (recoveredValue13) startingAt: (1).
    ^recoveredValue14
! !

"kernel.ic method 0x20015ddc; bytecode file offset 0x60cf4"
!ArrayedCollection methodsFor: 'recovered'!
findLast: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
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
            recoveredPC := 23.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 isInteger) ifTrue: [(recoveredStack0 > 0) ifTrue: [recoveredStack0 := recoveredStack0 - 1. recoveredPC := 10] ifFalse: [recoveredPC := 33]] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20016288; bytecode file offset 0x611a0"
!ArrayedCollection methodsFor: 'recovered'!
replaceAll: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [:recoveredBlock4Arg1 :recoveredBlock4Arg2 | 
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
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 20] ifFalse: [recoveredBlock4PC := 28].
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Arg2.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack3 := recoveredArg2.
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) at: (recoveredBlock4Stack2) put: (recoveredBlock4Stack3).
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    recoveredValue1 := (self) size.
    (recoveredValue0) applyWithIndex: (self) from: (1) to: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x20016388; bytecode file offset 0x612a0"
!ArrayedCollection methodsFor: 'recovered'!
indexOf: recoveredArg1 startingAt: recoveredArg2 ifAbsent: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := [:recoveredBlock4Arg1 :recoveredBlock4Arg2 | 
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
            recoveredBlock4Stack1 := recoveredBlock4Arg2.
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
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) size.
    (recoveredValue0) applyWithIndex: (self) from: (recoveredValue1) to: (recoveredValue2).
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue3) value.
    ^recoveredValue4
! !

"kernel.ic method 0x20018558; bytecode file offset 0x6347c"
!ArrayedCollection methodsFor: 'recovered'!
deepCopy
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) species.
    recoveredValue1 := (self) size.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := [:recoveredBlock15Arg1 :recoveredBlock15Arg2 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 |
    recoveredBlock15Value0 := recoveredLocal2.
    recoveredBlock15Value1 := recoveredBlock15Arg2.
    recoveredBlock15Value2 := recoveredBlock15Arg1.
    recoveredBlock15Value3 := (recoveredBlock15Value2) copy.
    recoveredBlock15Value4 := (recoveredBlock15Value0) at: (recoveredBlock15Value1) put: (recoveredBlock15Value3).
    recoveredBlock15Value4
].
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) applyWithIndex: (self) from: (1) to: (recoveredValue5).
    recoveredValue6 := recoveredLocal2.
    ^recoveredValue6
! !

"kernel.ic method 0x200199a4; bytecode file offset 0x648c8"
!ArrayedCollection methodsFor: 'recovered'!
collect: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) species.
    recoveredValue1 := (self) size.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := [:recoveredBlock15Arg1 :recoveredBlock15Arg2 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 |
    recoveredBlock15Value0 := recoveredLocal2.
    recoveredBlock15Value1 := recoveredBlock15Arg2.
    recoveredBlock15Value2 := recoveredArg1.
    recoveredBlock15Value3 := recoveredBlock15Arg1.
    recoveredBlock15Value4 := (recoveredBlock15Value2) value: (recoveredBlock15Value3).
    recoveredBlock15Value5 := (recoveredBlock15Value0) at: (recoveredBlock15Value1) put: (recoveredBlock15Value4).
    recoveredBlock15Value5
].
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) applyWithIndex: (self) from: (1) to: (recoveredValue5).
    recoveredValue6 := recoveredLocal2.
    ^recoveredValue6
! !

"kernel.ic method 0x2001b90c; bytecode file offset 0x6682c"
!ArrayedCollection methodsFor: 'recovered'!
reverse
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) species.
    recoveredValue1 := (self) size.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 |
    recoveredBlock15Value0 := recoveredLocal2.
    recoveredBlock15Value1 := recoveredLocal1.
    recoveredBlock15Value2 := recoveredBlock15Arg1.
    (recoveredBlock15Value0) at: (recoveredBlock15Value1) put: (recoveredBlock15Value2).
    recoveredBlock15Value3 := recoveredLocal1.
    recoveredBlock15Value4 := (recoveredBlock15Value3) + (-1).
    recoveredBlock15Value5 := recoveredBlock15Value4.
    recoveredLocal1 := recoveredBlock15Value5.
    recoveredBlock15Value4
].
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) apply: (self) from: (1) to: (recoveredValue5).
    recoveredValue6 := recoveredLocal2.
    ^recoveredValue6
! !

"kernel.ic method 0x2001ed70; bytecode file offset 0x69c8c"
!ArrayedCollection methodsFor: 'recovered'!
= recoveredArg1
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
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := [:recoveredBlock34Arg1 :recoveredBlock34Arg2 | 
    | recoveredBlock34Stack0 recoveredBlock34Stack1 recoveredBlock34Stack2 recoveredBlock34Stack3 recoveredBlock34Stack4 recoveredBlock34Stack5 recoveredBlock34PC recoveredBlock34Step recoveredBlock34Done recoveredBlock34Result |
    recoveredBlock34Stack0 := self.
    recoveredBlock34PC := 40.
    recoveredBlock34Done := false.
    [recoveredBlock34Done not] whileTrue: [
        recoveredBlock34Step := recoveredBlock34PC.
        recoveredBlock34Step = 40 ifTrue: [
            recoveredBlock34Stack1 := nil.
            recoveredBlock34PC := 41.
        ].
        recoveredBlock34Step = 41 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Arg1.
            recoveredBlock34PC := 42.
        ].
        recoveredBlock34Step = 42 ifTrue: [
            recoveredBlock34Stack3 := recoveredArg1.
            recoveredBlock34PC := 45.
        ].
        recoveredBlock34Step = 45 ifTrue: [
            recoveredBlock34Stack4 := recoveredBlock34Arg2.
            recoveredBlock34PC := 46.
        ].
        recoveredBlock34Step = 46 ifTrue: [
            recoveredBlock34Stack3 := (recoveredBlock34Stack3) at: (recoveredBlock34Stack4).
            recoveredBlock34PC := 47.
        ].
        recoveredBlock34Step = 47 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) = (recoveredBlock34Stack3).
            recoveredBlock34PC := 48.
        ].
        recoveredBlock34Step = 48 ifTrue: [
            (recoveredBlock34Stack2) ifTrue: [recoveredBlock34PC := 55] ifFalse: [recoveredBlock34PC := 52].
        ].
        recoveredBlock34Step = 52 ifTrue: [
            recoveredBlock34PC := 53.
        ].
        recoveredBlock34Step = 53 ifTrue: [
            recoveredBlock34Stack1 := false.
            recoveredBlock34PC := 54.
        ].
        recoveredBlock34Step = 54 ifTrue: [
            ^recoveredBlock34Stack1
        ].
        recoveredBlock34Step = 55 ifTrue: [
            recoveredBlock34Result := recoveredBlock34Stack1.
            recoveredBlock34Done := true.
        ].
    ].
    recoveredBlock34Result
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) applyWithIndex: (recoveredStack1) from: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x200202e8; bytecode file offset 0x6b210"
!ArrayedCollection methodsFor: 'recovered'!
select: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredLocal2 := 0.
    recoveredValue0 := (self) species.
    recoveredValue1 := (self) size.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Stack0 recoveredBlock20Stack1 recoveredBlock20Stack2 recoveredBlock20Stack3 recoveredBlock20Stack4 recoveredBlock20PC recoveredBlock20Step recoveredBlock20Done recoveredBlock20Result |
    recoveredBlock20Stack0 := self.
    recoveredBlock20PC := 26.
    recoveredBlock20Done := false.
    [recoveredBlock20Done not] whileTrue: [
        recoveredBlock20Step := recoveredBlock20PC.
        recoveredBlock20Step = 26 ifTrue: [
            recoveredBlock20Stack1 := nil.
            recoveredBlock20PC := 27.
        ].
        recoveredBlock20Step = 27 ifTrue: [
            recoveredBlock20Stack2 := recoveredArg1.
            recoveredBlock20PC := 30.
        ].
        recoveredBlock20Step = 30 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Arg1.
            recoveredBlock20PC := 31.
        ].
        recoveredBlock20Step = 31 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) value: (recoveredBlock20Stack3).
            recoveredBlock20PC := 32.
        ].
        recoveredBlock20Step = 32 ifTrue: [
            (recoveredBlock20Stack2) ifTrue: [recoveredBlock20PC := 36] ifFalse: [recoveredBlock20PC := 51].
        ].
        recoveredBlock20Step = 36 ifTrue: [
            recoveredBlock20PC := 37.
        ].
        recoveredBlock20Step = 37 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal3.
            recoveredBlock20PC := 40.
        ].
        recoveredBlock20Step = 40 ifTrue: [
            recoveredBlock20Stack2 := recoveredLocal2.
            recoveredBlock20PC := 43.
        ].
        recoveredBlock20Step = 43 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) + (1).
            recoveredBlock20PC := 44.
        ].
        recoveredBlock20Step = 44 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Stack2.
            recoveredBlock20PC := 45.
        ].
        recoveredBlock20Step = 45 ifTrue: [
            recoveredLocal2 := recoveredBlock20Stack3.
            recoveredBlock20PC := 48.
        ].
        recoveredBlock20Step = 48 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Arg1.
            recoveredBlock20PC := 49.
        ].
        recoveredBlock20Step = 49 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) at: (recoveredBlock20Stack2) put: (recoveredBlock20Stack3).
            recoveredBlock20PC := 51.
        ].
        recoveredBlock20Step = 51 ifTrue: [
            recoveredBlock20Result := recoveredBlock20Stack1.
            recoveredBlock20Done := true.
        ].
    ].
    recoveredBlock20Result
].
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) apply: (self) from: (1) to: (recoveredValue5).
    recoveredValue6 := recoveredLocal3.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (recoveredValue6) copyFrom: (1) to: (recoveredValue7).
    ^recoveredValue8
! !

"kernel.ic method 0x20020354; bytecode file offset 0x6b27c"
!ArrayedCollection methodsFor: 'recovered'!
reject: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredLocal2 := 0.
    recoveredValue0 := (self) species.
    recoveredValue1 := (self) size.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Stack0 recoveredBlock20Stack1 recoveredBlock20Stack2 recoveredBlock20Stack3 recoveredBlock20Stack4 recoveredBlock20PC recoveredBlock20Step recoveredBlock20Done recoveredBlock20Result |
    recoveredBlock20Stack0 := self.
    recoveredBlock20PC := 26.
    recoveredBlock20Done := false.
    [recoveredBlock20Done not] whileTrue: [
        recoveredBlock20Step := recoveredBlock20PC.
        recoveredBlock20Step = 26 ifTrue: [
            recoveredBlock20Stack1 := nil.
            recoveredBlock20PC := 27.
        ].
        recoveredBlock20Step = 27 ifTrue: [
            recoveredBlock20Stack2 := recoveredArg1.
            recoveredBlock20PC := 30.
        ].
        recoveredBlock20Step = 30 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Arg1.
            recoveredBlock20PC := 31.
        ].
        recoveredBlock20Step = 31 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) value: (recoveredBlock20Stack3).
            recoveredBlock20PC := 32.
        ].
        recoveredBlock20Step = 32 ifTrue: [
            (recoveredBlock20Stack2) ifTrue: [recoveredBlock20PC := 51] ifFalse: [recoveredBlock20PC := 36].
        ].
        recoveredBlock20Step = 36 ifTrue: [
            recoveredBlock20PC := 37.
        ].
        recoveredBlock20Step = 37 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal3.
            recoveredBlock20PC := 40.
        ].
        recoveredBlock20Step = 40 ifTrue: [
            recoveredBlock20Stack2 := recoveredLocal2.
            recoveredBlock20PC := 43.
        ].
        recoveredBlock20Step = 43 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) + (1).
            recoveredBlock20PC := 44.
        ].
        recoveredBlock20Step = 44 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Stack2.
            recoveredBlock20PC := 45.
        ].
        recoveredBlock20Step = 45 ifTrue: [
            recoveredLocal2 := recoveredBlock20Stack3.
            recoveredBlock20PC := 48.
        ].
        recoveredBlock20Step = 48 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Arg1.
            recoveredBlock20PC := 49.
        ].
        recoveredBlock20Step = 49 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) at: (recoveredBlock20Stack2) put: (recoveredBlock20Stack3).
            recoveredBlock20PC := 51.
        ].
        recoveredBlock20Step = 51 ifTrue: [
            recoveredBlock20Result := recoveredBlock20Stack1.
            recoveredBlock20Done := true.
        ].
    ].
    recoveredBlock20Result
].
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) apply: (self) from: (1) to: (recoveredValue5).
    recoveredValue6 := recoveredLocal3.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (recoveredValue6) copyFrom: (1) to: (recoveredValue7).
    ^recoveredValue8
! !

"kernel.ic method 0x200203c0; bytecode file offset 0x6b2e4"
!ArrayedCollection methodsFor: 'recovered'!
copyWithout: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredLocal2 := 0.
    recoveredValue0 := (self) species.
    recoveredValue1 := (self) size.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Stack0 recoveredBlock20Stack1 recoveredBlock20Stack2 recoveredBlock20Stack3 recoveredBlock20Stack4 recoveredBlock20PC recoveredBlock20Step recoveredBlock20Done recoveredBlock20Result |
    recoveredBlock20Stack0 := self.
    recoveredBlock20PC := 26.
    recoveredBlock20Done := false.
    [recoveredBlock20Done not] whileTrue: [
        recoveredBlock20Step := recoveredBlock20PC.
        recoveredBlock20Step = 26 ifTrue: [
            recoveredBlock20Stack1 := nil.
            recoveredBlock20PC := 27.
        ].
        recoveredBlock20Step = 27 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg1.
            recoveredBlock20PC := 28.
        ].
        recoveredBlock20Step = 28 ifTrue: [
            recoveredBlock20Stack3 := recoveredArg1.
            recoveredBlock20PC := 31.
        ].
        recoveredBlock20Step = 31 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) = (recoveredBlock20Stack3).
            recoveredBlock20PC := 32.
        ].
        recoveredBlock20Step = 32 ifTrue: [
            (recoveredBlock20Stack2) ifTrue: [recoveredBlock20PC := 51] ifFalse: [recoveredBlock20PC := 36].
        ].
        recoveredBlock20Step = 36 ifTrue: [
            recoveredBlock20PC := 37.
        ].
        recoveredBlock20Step = 37 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal3.
            recoveredBlock20PC := 40.
        ].
        recoveredBlock20Step = 40 ifTrue: [
            recoveredBlock20Stack2 := recoveredLocal2.
            recoveredBlock20PC := 43.
        ].
        recoveredBlock20Step = 43 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) + (1).
            recoveredBlock20PC := 44.
        ].
        recoveredBlock20Step = 44 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Stack2.
            recoveredBlock20PC := 45.
        ].
        recoveredBlock20Step = 45 ifTrue: [
            recoveredLocal2 := recoveredBlock20Stack3.
            recoveredBlock20PC := 48.
        ].
        recoveredBlock20Step = 48 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Arg1.
            recoveredBlock20PC := 49.
        ].
        recoveredBlock20Step = 49 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) at: (recoveredBlock20Stack2) put: (recoveredBlock20Stack3).
            recoveredBlock20PC := 51.
        ].
        recoveredBlock20Step = 51 ifTrue: [
            recoveredBlock20Result := recoveredBlock20Stack1.
            recoveredBlock20Done := true.
        ].
    ].
    recoveredBlock20Result
].
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) apply: (self) from: (1) to: (recoveredValue5).
    recoveredValue6 := recoveredLocal3.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (recoveredValue6) copyFrom: (1) to: (recoveredValue7).
    ^recoveredValue8
! !

"kernel.ic method 0x20022fe0; bytecode file offset 0x6df08"
!ArrayedCollection methodsFor: 'recovered'!
printElementsOn: recoveredArg1 recursionSet: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) size.
    recoveredLocal3 := recoveredValue0.
    recoveredValue1 := (self) maxPrint.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) position.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := [:recoveredBlock20Arg1 :recoveredBlock20Arg2 | 
    | recoveredBlock20Stack0 recoveredBlock20Stack1 recoveredBlock20Stack2 recoveredBlock20Stack3 recoveredBlock20Stack4 recoveredBlock20PC recoveredBlock20Step recoveredBlock20Done recoveredBlock20Result |
    recoveredBlock20Stack0 := self.
    recoveredBlock20PC := 26.
    recoveredBlock20Done := false.
    [recoveredBlock20Done not] whileTrue: [
        recoveredBlock20Step := recoveredBlock20PC.
        recoveredBlock20Step = 26 ifTrue: [
            recoveredBlock20Stack1 := recoveredArg1.
            recoveredBlock20PC := 29.
        ].
        recoveredBlock20Step = 29 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) position.
            recoveredBlock20PC := 30.
        ].
        recoveredBlock20Step = 30 ifTrue: [
            recoveredBlock20Stack2 := recoveredLocal2.
            recoveredBlock20PC := 33.
        ].
        recoveredBlock20Step = 33 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) - (recoveredBlock20Stack2).
            recoveredBlock20PC := 34.
        ].
        recoveredBlock20Step = 34 ifTrue: [
            recoveredBlock20Stack2 := recoveredLocal1.
            recoveredBlock20PC := 37.
        ].
        recoveredBlock20Step = 37 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) > (recoveredBlock20Stack2).
            recoveredBlock20PC := 38.
        ].
        recoveredBlock20Step = 38 ifTrue: [
            (recoveredBlock20Stack1) ifTrue: [recoveredBlock20PC := 42] ifFalse: [recoveredBlock20PC := 48].
        ].
        recoveredBlock20Step = 42 ifTrue: [
            recoveredBlock20Stack1 := self.
            recoveredBlock20PC := 43.
        ].
        recoveredBlock20Step = 43 ifTrue: [
            recoveredBlock20Stack2 := recoveredArg1.
            recoveredBlock20PC := 46.
        ].
        recoveredBlock20Step = 46 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) printEtcOn: (recoveredBlock20Stack2).
            recoveredBlock20PC := 47.
        ].
        recoveredBlock20Step = 47 ifTrue: [
            ^recoveredBlock20Stack1
        ].
        recoveredBlock20Step = 48 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 49.
        ].
        recoveredBlock20Step = 49 ifTrue: [
            recoveredBlock20Stack2 := recoveredArg1.
            recoveredBlock20PC := 52.
        ].
        recoveredBlock20Step = 52 ifTrue: [
            recoveredBlock20Stack3 := recoveredArg2.
            recoveredBlock20PC := 55.
        ].
        recoveredBlock20Step = 55 ifTrue: [
            (recoveredBlock20Stack1) printOn: (recoveredBlock20Stack2) recursionSet: (recoveredBlock20Stack3).
            recoveredBlock20PC := 57.
        ].
        recoveredBlock20Step = 57 ifTrue: [
            recoveredBlock20Stack1 := nil.
            recoveredBlock20PC := 58.
        ].
        recoveredBlock20Step = 58 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg2.
            recoveredBlock20PC := 59.
        ].
        recoveredBlock20Step = 59 ifTrue: [
            recoveredBlock20Stack3 := recoveredLocal3.
            recoveredBlock20PC := 62.
        ].
        recoveredBlock20Step = 62 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) = (recoveredBlock20Stack3).
            recoveredBlock20PC := 63.
        ].
        recoveredBlock20Step = 63 ifTrue: [
            (recoveredBlock20Stack2) ifTrue: [recoveredBlock20PC := 76] ifFalse: [recoveredBlock20PC := 66].
        ].
        recoveredBlock20Step = 66 ifTrue: [
            recoveredBlock20PC := 67.
        ].
        recoveredBlock20Step = 67 ifTrue: [
            recoveredBlock20Stack1 := recoveredArg1.
            recoveredBlock20PC := 70.
        ].
        recoveredBlock20Step = 70 ifTrue: [
            recoveredBlock20Stack2 := $ .
            recoveredBlock20PC := 74.
        ].
        recoveredBlock20Step = 74 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) nextPut: (recoveredBlock20Stack2).
            recoveredBlock20PC := 76.
        ].
        recoveredBlock20Step = 76 ifTrue: [
            recoveredBlock20Result := recoveredBlock20Stack1.
            recoveredBlock20Done := true.
        ].
    ].
    recoveredBlock20Result
].
    recoveredValue5 := recoveredLocal3.
    (recoveredValue4) applyWithIndex: (self) from: (1) to: (recoveredValue5).
    ^self
! !

"kernel.ic method 0x2002680c; bytecode file offset 0x71724"
!ArrayedCollection methodsFor: 'recovered'!
indexOfSubCollection: recoveredArg1 startingAt: recoveredArg2 ifAbsent: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 89].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 89].
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal4 isInteger]) ifTrue: [(recoveredLocal4 + 1 <= recoveredStack0) ifTrue: [recoveredLocal4 := recoveredLocal4 + 1. recoveredPC := 40] ifFalse: [recoveredLocal4 := nil. recoveredPC := 109]] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 107] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20028ab8; bytecode file offset 0x73a10"
!ArrayedCollection methodsFor: 'recovered'!
storeOn: recoveredArg1 recursionSet: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack1 := ' basicNew: '.
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
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := $).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := [:recoveredBlock52Arg1 :recoveredBlock52Arg2 | 
    | recoveredBlock52Value0 recoveredBlock52Value1 recoveredBlock52Value2 recoveredBlock52Value3 recoveredBlock52Value4 recoveredBlock52Value5 recoveredBlock52Value6 recoveredBlock52Value7 recoveredBlock52Value8 recoveredBlock52Value9 recoveredBlock52Value10 recoveredBlock52Value11 |
    recoveredBlock52Value0 := recoveredArg1.
    recoveredBlock52Value1 := recoveredBlock52Value0.
    (recoveredBlock52Value1) cr.
    recoveredBlock52Value2 := recoveredBlock52Value0.
    (recoveredBlock52Value2) tab.
    (recoveredBlock52Value0) nextPutAll: ('at: ').
    recoveredBlock52Value3 := recoveredBlock52Arg2.
    recoveredBlock52Value4 := recoveredArg1.
    recoveredBlock52Value5 := recoveredArg2.
    (recoveredBlock52Value3) storeOn: (recoveredBlock52Value4) recursionSet: (recoveredBlock52Value5).
    recoveredBlock52Value6 := recoveredArg1.
    (recoveredBlock52Value6) nextPutAll: (' put: ').
    recoveredBlock52Value7 := recoveredBlock52Arg1.
    recoveredBlock52Value8 := recoveredArg1.
    recoveredBlock52Value9 := recoveredArg2.
    (recoveredBlock52Value7) storeOn: (recoveredBlock52Value8) recursionSet: (recoveredBlock52Value9).
    recoveredBlock52Value10 := recoveredArg1.
    recoveredBlock52Value11 := (recoveredBlock52Value10) nextPut: ($;).
    recoveredBlock52Value11
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) applyWithIndex: (recoveredStack1) from: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) recursiveAccessClear: (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) tab.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := 'yourself)'.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

