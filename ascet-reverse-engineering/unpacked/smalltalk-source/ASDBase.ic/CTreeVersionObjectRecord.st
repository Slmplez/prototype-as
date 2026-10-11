"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012cd8; bytecode file offset 0x912098"
!CTreeVersionObjectRecord methodsFor: 'recovered'!
proxyClass
    | recoveredValue0 |
    recoveredValue0 := DBVersionProxy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20062fa0; bytecode file offset 0x95f8b0"
!CTreeVersionObjectRecord methodsFor: 'recovered'!
globalId
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) thisVersionId.
    recoveredValue1 := (self) transactionId.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2019b144; bytecode file offset 0xa97a7c"
!CTreeVersionObjectRecord methodsFor: 'recovered'!
tsFirstVersion: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) fieldIndexAt: ('tsFirstVersion').
    recoveredValue1 := recoveredValue0.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) timeLength.
    recoveredValue5 := (recoveredValue2) + (recoveredValue4).
    recoveredValue6 := (recoveredValue5) + (-1).
    recoveredValue7 := recoveredArg1.
    (self) replaceFrom: (recoveredValue0) to: (recoveredValue6) with: (recoveredValue7) startingAt: (1).
    ^self
! !

"ASDBase.ic method 0x2019b198; bytecode file offset 0xa97a7c"
!CTreeVersionObjectRecord methodsFor: 'recovered'!
pcFirstVersion: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) fieldIndexAt: ('pcFirstVersion').
    recoveredValue1 := recoveredValue0.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) pcIdLength.
    recoveredValue5 := (recoveredValue2) + (recoveredValue4).
    recoveredValue6 := (recoveredValue5) + (-1).
    recoveredValue7 := recoveredArg1.
    (self) replaceFrom: (recoveredValue0) to: (recoveredValue6) with: (recoveredValue7) startingAt: (1).
    ^self
! !

"ASDBase.ic method 0x2019dffc; bytecode file offset 0xa9a938"
!CTreeVersionObjectRecord methodsFor: 'recovered'!
tsFirstVersion
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) timeLength.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) timeLength.
    recoveredValue6 := (self) fieldIndexAt: ('tsFirstVersion').
    recoveredValue7 := (recoveredValue3) replaceFrom: (1) to: (recoveredValue5) with: (self) startingAt: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2019e068; bytecode file offset 0xa9a938"
!CTreeVersionObjectRecord methodsFor: 'recovered'!
pcFirstVersion
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) pcIdLength.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) pcIdLength.
    recoveredValue6 := (self) fieldIndexAt: ('pcFirstVersion').
    recoveredValue7 := (recoveredValue3) replaceFrom: (1) to: (recoveredValue5) with: (self) startingAt: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x202209c8; bytecode file offset 0xb1d294"
!CTreeVersionObjectRecord methodsFor: 'recovered'!
firstVersionId: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := 'pcFirstVersion'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) fieldIndexAt: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := (recoveredStack4) class.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := (recoveredStack4) pcIdLength.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := (recoveredStack4) class.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := (recoveredStack4) timeLength.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) replaceFrom: (recoveredStack2) to: (recoveredStack3) with: (recoveredStack4) startingAt: (recoveredStack5).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20223b94; bytecode file offset 0xb20490"
!CTreeVersionObjectRecord methodsFor: 'recovered'!
firstVersionId
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) pcIdLength.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) timeLength.
    recoveredValue5 := (recoveredValue2) + (recoveredValue4).
    recoveredValue6 := (recoveredValue0) new: (recoveredValue5).
    recoveredValue7 := (self) class.
    recoveredValue8 := (recoveredValue7) pcIdLength.
    recoveredValue9 := (self) class.
    recoveredValue10 := (recoveredValue9) timeLength.
    recoveredValue11 := (recoveredValue8) + (recoveredValue10).
    recoveredValue12 := (self) fieldIndexAt: ('pcFirstVersion').
    recoveredValue13 := (recoveredValue6) replaceFrom: (1) to: (recoveredValue11) with: (self) startingAt: (recoveredValue12).
    ^recoveredValue13
! !

