"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003a5ec; bytecode file offset 0x938608"
!CTreeLabelObjectRecordArray methodsFor: 'recovered'!
deleteFlagAt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint16At: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b258; bytecode file offset 0x938608"
!CTreeLabelObjectRecordArray methodsFor: 'recovered'!
nameAt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) baseNameAt: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008f61c; bytecode file offset 0x98c228"
!CTreeLabelObjectRecordArray methodsFor: 'recovered'!
numOfElements
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) size.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) fixedSize.
    recoveredValue3 := (recoveredValue0) / (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20093e20; bytecode file offset 0x9906d8"
!CTreeLabelObjectRecordArray methodsFor: 'recovered'!
classNameAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (2) + (recoveredValue0).
    recoveredValue2 := (self) uint16At: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e85f0; bytecode file offset 0x9e4ea8"
!CTreeLabelObjectRecordArray methodsFor: 'recovered'!
hasEmptyFunctionTagAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (41) + (recoveredValue0).
    recoveredValue2 := (self) uint8At: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) = (255).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2011ef7c; bytecode file offset 0xa1b834"
!CTreeLabelObjectRecordArray methodsFor: 'recovered'!
functionAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (41) + (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (73) + (recoveredValue2).
    recoveredValue4 := (self) copyPSZStringFrom: (recoveredValue1) to: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20153820; bytecode file offset 0xa500d8"
!CTreeLabelObjectRecordArray methodsFor: 'recovered'!
baseNameAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (4) + (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (39) + (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (36) + (recoveredValue4).
    recoveredValue6 := (self) copyPSZStringFrom: (recoveredValue1) to: (recoveredValue3) bin: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20173cb4; bytecode file offset 0xa70578"
!CTreeLabelObjectRecordArray methodsFor: 'recovered'!
recordAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := CTreeLabelObjectRecord.
    recoveredValue1 := CTreeLabelObjectRecord.
    recoveredValue2 := (recoveredValue1) fixedSize.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredValue4 := CTreeLabelObjectRecord.
    recoveredValue5 := (recoveredValue4) fixedSize.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) + (1).
    recoveredValue8 := (recoveredValue3) replaceFrom: (1) to: (recoveredValue5) with: (self) startingAt: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x20191f08; bytecode file offset 0xa8e7c8"
!CTreeLabelObjectRecordArray methodsFor: 'recovered'!
globalIdAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (recoveredValue0) new: (20).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (75) + (recoveredValue2).
    recoveredValue4 := (recoveredValue1) replaceFrom: (1) to: (20) with: (self) startingAt: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x203cf290; bytecode file offset 0xccbb6c"
!CTreeLabelObjectRecordArray methodsFor: 'recovered'!
asProxy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) numOfElements.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) fixedSize.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) uint32At: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := (recoveredStack4) proxyClass.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack6 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack7 := 4.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack6 := (recoveredStack6) + (recoveredStack7).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := (recoveredStack4) createFromRecord: (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack1) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 20] ifFalse: [recoveredLocal3 := nil. recoveredPC := 80]] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

