"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200281e4; bytecode file offset 0x934580"
!SGCgTempVarManager methodsFor: 'recovered'!
notClear
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stack.
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003c3d0; bytecode file offset 0x938c88"
!SGCgTempVarManager methodsFor: 'recovered'!
newTempVarName: recoveredArg1 type: recoveredArg2 charTableScope: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) newTempVarName: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20065d04; bytecode file offset 0x963428"
!SGCgTempVarManager methodsFor: 'recovered'!
currentIndex
    | recoveredValue0 |
    recoveredValue0 := currentIndex.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067d74; bytecode file offset 0x9646f8"
!SGCgTempVarManager methodsFor: 'recovered'!
stack
    | recoveredValue0 |
    recoveredValue0 := markerStack.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067e6c; bytecode file offset 0x965b90"
!SGCgTempVarManager methodsFor: 'recovered'!
maxIndex
    | recoveredValue0 |
    recoveredValue0 := maxIndex.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008d214; bytecode file offset 0x989db0"
!SGCgTempVarManager methodsFor: 'recovered'!
reserveScope
    | recoveredValue0 |
    recoveredValue0 := (self) maxIndex.
    (self) pushStack: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008d434; bytecode file offset 0x989db0"
!SGCgTempVarManager methodsFor: 'recovered'!
freeScope
    | recoveredValue0 |
    recoveredValue0 := (self) popStack.
    (self) maxIndex: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008d4d4; bytecode file offset 0x989db0"
!SGCgTempVarManager methodsFor: 'recovered'!
reserveTemps
    | recoveredValue0 |
    recoveredValue0 := (self) currentIndex.
    (self) pushStack: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20092c40; bytecode file offset 0x98f534"
!SGCgTempVarManager methodsFor: 'recovered'!
freeTempIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := freeIndexes.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) addLast: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20097994; bytecode file offset 0x995850"
!SGCgTempVarManager methodsFor: 'recovered'!
pushStack: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stack.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) push: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009db94; bytecode file offset 0x99a578"
!SGCgTempVarManager methodsFor: 'recovered'!
newTempVarName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getIndex.
    recoveredValue1 := (recoveredValue0) printString.
    recoveredValue2 := ('_t') , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bdd44; bytecode file offset 0x9bb178"
!SGCgTempVarManager methodsFor: 'recovered'!
currentIndex: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    currentIndex := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfb74; bytecode file offset 0x9bd228"
!SGCgTempVarManager methodsFor: 'recovered'!
maxIndex: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    maxIndex := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d65e0; bytecode file offset 0x9d3134"
!SGCgTempVarManager methodsFor: 'recovered'!
initialize
    super initialize.
    (self) reset.
    ^self
! !

"ASDBase.ic method 0x200d7a20; bytecode file offset 0x9d42e4"
!SGCgTempVarManager methodsFor: 'recovered'!
newTempVarName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) getIndex.
    recoveredValue1 := (recoveredValue0) printString.
    recoveredValue2 := ('_t') , (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2014b230; bytecode file offset 0xa47af4"
!SGCgTempVarManager methodsFor: 'recovered'!
freeTempId: recoveredArg1 key: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := (recoveredValue2) - (recoveredValue4).
    recoveredValue6 := (recoveredValue0) copyFrom: (3) to: (recoveredValue5).
    recoveredValue7 := (recoveredValue6) asInteger.
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (self) freeTempIdentifier: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x2016f5b0; bytecode file offset 0xa6be74"
!SGCgTempVarManager methodsFor: 'recovered'!
getIndex
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := freeIndexes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := freeIndexes.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeFirst.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentIndex.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) currentIndex: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentIndex.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017af84; bytecode file offset 0xa77844"
!SGCgTempVarManager methodsFor: 'recovered'!
varNameNotYetUsed
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxIndex.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentIndex.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxIndex.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) maxIndex: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2019e0a8; bytecode file offset 0xa9a96c"
!SGCgTempVarManager methodsFor: 'recovered'!
reset
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGCgStack.
    recoveredValue1 := (recoveredValue0) create: (10).
    markerStack := recoveredValue1.
    currentIndex := 0.
    maxIndex := 1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    freeIndexes := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x201a2b34; bytecode file offset 0xa9f418"
!SGCgTempVarManager methodsFor: 'recovered'!
popStack
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) stack.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'stack expects Element'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) error: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) stack.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) pop.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201af848; bytecode file offset 0xaac10c"
!SGCgTempVarManager methodsFor: 'recovered'!
freeTemps
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) popStack.
    (self) currentIndex: (recoveredValue0).
    recoveredValue1 := freeIndexes.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := (self) currentIndex.
    recoveredBlock10Value2 := (recoveredBlock10Value0) > (recoveredBlock10Value1).
    recoveredBlock10Value2
].
    recoveredValue3 := (recoveredValue1) reject: (recoveredValue2).
    freeIndexes := recoveredValue3.
    ^self
! !

