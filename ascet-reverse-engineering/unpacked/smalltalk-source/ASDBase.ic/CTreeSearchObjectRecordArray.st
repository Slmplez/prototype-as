"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2008f55c; bytecode file offset 0x98c228"
!CTreeSearchObjectRecordArray methodsFor: 'recovered'!
numOfElements
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) size.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) fixedSize.
    recoveredValue3 := (recoveredValue0) / (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200aa9bc; bytecode file offset 0x9a72e0"
!CTreeSearchObjectRecordArray methodsFor: 'recovered'!
globalIdAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) thisVersionIdAt: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) transactionIdAt: (recoveredValue2).
    recoveredValue4 := (recoveredValue1) , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200ba5e4; bytecode file offset 0x9b6e9c"
!CTreeSearchObjectRecordArray methodsFor: 'recovered'!
versionAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (104) + (recoveredValue0).
    recoveredValue2 := (self) uint32At: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ba5fc; bytecode file offset 0x9b6eb4"
!CTreeSearchObjectRecordArray methodsFor: 'recovered'!
objectStateAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (108) + (recoveredValue0).
    recoveredValue2 := (self) uint32At: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ba614; bytecode file offset 0x9b6ecc"
!CTreeSearchObjectRecordArray methodsFor: 'recovered'!
referenceStateAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (112) + (recoveredValue0).
    recoveredValue2 := (self) uint32At: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ba644; bytecode file offset 0x9b6efc"
!CTreeSearchObjectRecordArray methodsFor: 'recovered'!
blobSizeAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (122) + (recoveredValue0).
    recoveredValue2 := (self) uint32At: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2011ef5c; bytecode file offset 0xa1b814"
!CTreeSearchObjectRecordArray methodsFor: 'recovered'!
classNameAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (38) + (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (70) + (recoveredValue2).
    recoveredValue4 := (self) copyPSZStringFrom: (recoveredValue1) to: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201430f0; bytecode file offset 0xa3f9a8"
!CTreeSearchObjectRecordArray methodsFor: 'recovered'!
nameAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (71) + (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (103) + (recoveredValue2).
    recoveredValue4 := (self) copyPSZStringFrom: (recoveredValue1) to: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20173e04; bytecode file offset 0xa706c4"
!CTreeSearchObjectRecordArray methodsFor: 'recovered'!
pcIdAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (recoveredValue0) new: (8).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (3) + (recoveredValue2).
    recoveredValue4 := (recoveredValue1) replaceFrom: (1) to: (8) with: (self) startingAt: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20173e30; bytecode file offset 0xa706f0"
!CTreeSearchObjectRecordArray methodsFor: 'recovered'!
pcFirstVersionAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (recoveredValue0) new: (8).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (21) + (recoveredValue2).
    recoveredValue4 := (recoveredValue1) replaceFrom: (1) to: (8) with: (self) startingAt: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20173e5c; bytecode file offset 0xa7071c"
!CTreeSearchObjectRecordArray methodsFor: 'recovered'!
tsThisVersionAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (recoveredValue0) new: (10).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (11) + (recoveredValue2).
    recoveredValue4 := (recoveredValue1) replaceFrom: (1) to: (10) with: (self) startingAt: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20173e88; bytecode file offset 0xa70748"
!CTreeSearchObjectRecordArray methodsFor: 'recovered'!
tsFirstVersionAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (recoveredValue0) new: (10).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (29) + (recoveredValue2).
    recoveredValue4 := (recoveredValue1) replaceFrom: (1) to: (10) with: (self) startingAt: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20173eb4; bytecode file offset 0xa70774"
!CTreeSearchObjectRecordArray methodsFor: 'recovered'!
thisVersionIdAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (recoveredValue0) new: (18).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (3) + (recoveredValue2).
    recoveredValue4 := (recoveredValue1) replaceFrom: (1) to: (18) with: (self) startingAt: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20173ee0; bytecode file offset 0xa707a0"
!CTreeSearchObjectRecordArray methodsFor: 'recovered'!
firstVersionIdAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (recoveredValue0) new: (18).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (21) + (recoveredValue2).
    recoveredValue4 := (recoveredValue1) replaceFrom: (1) to: (18) with: (self) startingAt: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20191edc; bytecode file offset 0xa8e79c"
!CTreeSearchObjectRecordArray methodsFor: 'recovered'!
transactionIdAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (recoveredValue0) new: (2).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (120) + (recoveredValue2).
    recoveredValue4 := (recoveredValue1) replaceFrom: (1) to: (2) with: (self) startingAt: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x203395dc; bytecode file offset 0xc35eb0"
!CTreeSearchObjectRecordArray methodsFor: 'recovered'!
asProxy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
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
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := (recoveredStack4) proxyClass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack6 := (recoveredStack6) + (-1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack7 := (recoveredStack7) class.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack7 := (recoveredStack7) fixedSize.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack6 := (recoveredStack6) * (recoveredStack7).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack7 := 8.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack6 := (recoveredStack6) + (recoveredStack7).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := (recoveredStack4) createFromRecord: (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack5.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack1) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 20] ifFalse: [recoveredLocal2 := nil. recoveredPC := 58]] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

