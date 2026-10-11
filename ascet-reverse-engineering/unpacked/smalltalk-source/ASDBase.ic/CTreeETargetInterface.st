"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013ee4; bytecode file offset 0x912098"
!CTreeETargetInterface methodsFor: 'recovered'!
recordClass
    | recoveredValue0 |
    recoveredValue0 := CTreeETargetObjectRecord.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a2c4; bytecode file offset 0x92209c"
!CTreeETargetInterface methodsFor: 'recovered'!
uniqueIndex
    ^'pseudoAddress'
! !

"ASDBase.ic method 0x2001e248; bytecode file offset 0x92209c"
!CTreeETargetInterface methodsFor: 'recovered'!
defaultDataFilename
    ^'etargetWorkbase'
! !

"ASDBase.ic method 0x20061dd4; bytecode file offset 0x95e838"
!CTreeETargetInterface methodsFor: 'recovered'!
pseudoAddressSeg
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ctSegments.
    recoveredValue1 := (recoveredValue0) at: ('pseudoAddressSegment').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20062adc; bytecode file offset 0x95f8b0"
!CTreeETargetInterface methodsFor: 'recovered'!
registerName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) pathName.
    recoveredValue1 := (self) objectFileName.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bbfe0; bytecode file offset 0x9b8ddc"
!CTreeETargetInterface methodsFor: 'recovered'!
pseudoAddressSeg: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ctSegments.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('pseudoAddressSegment') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20205464; bytecode file offset 0xb01d38"
!CTreeETargetInterface methodsFor: 'recovered'!
initializeIndex
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := CTIIdxArray.
    recoveredValue1 := (self) recordClass.
    recoveredValue2 := (recoveredValue1) numberOfKeys.
    recoveredValue3 := (recoveredValue0) create: (recoveredValue2).
    ctKey := recoveredValue3.
    recoveredValue4 := (self) initializePseudoAddressIndex.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := ctKey.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) indexAt: (0) put: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := DBPseudoAddressKey.
    (self) setUniqueIndex: (recoveredValue7) keyClass: (recoveredValue8).
    recoveredValue9 := ctKey.
    ^recoveredValue9
! !

"ASDBase.ic method 0x2024210c; bytecode file offset 0xb3e9d0"
!CTreeETargetInterface methodsFor: 'recovered'!
initializeInstances
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := pathNames.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) objectFileName.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            super initializeInstances.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) objectFileName.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) changeFileNames: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202898d0; bytecode file offset 0xb861a8"
!CTreeETargetInterface methodsFor: 'recovered'!
initializePseudoAddressIndex
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := uniqueIndex.
    recoveredValue1 := (recoveredValue0) key.
    recoveredValue2 := ('pseudoAddress') = (recoveredValue1).
    recoveredValue3 := (recoveredValue2) not.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := CTIIdx.
    recoveredValue5 := (self) recordClass.
    recoveredValue6 := (recoveredValue5) pseudoAddressLength.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (self) pseudoAddressSeg.
    recoveredValue9 := (recoveredValue8) entries.
    recoveredValue10 := (self) pseudoAddressSeg.
    recoveredValue11 := (recoveredValue4) create: (recoveredValue6) duplicates: (recoveredValue7) nullFlag: (0) emptyChar: (0) numberOfSegments: (recoveredValue9) segments: (recoveredValue10).
    recoveredLocal2 := recoveredValue11.
    recoveredValue12 := recoveredLocal2.
    (recoveredValue12) ikeytyp: (12).
    recoveredValue13 := recoveredLocal2.
    ^recoveredValue13
! !

"ASDBase.ic method 0x202f2954; bytecode file offset 0xbef248"
!CTreeETargetInterface methodsFor: 'recovered'!
initializeSegments
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (self) recordClass.
    recoveredValue2 := (recoveredValue1) numberOfKeys.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    ctSegments := recoveredValue3.
    recoveredValue4 := (self) recordClass.
    recoveredValue5 := (recoveredValue4) createDoDaIndices.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := CTISegArray.
    recoveredValue7 := (recoveredValue6) create: (1).
    (self) pseudoAddressSeg: (recoveredValue7).
    recoveredValue8 := CTISeg.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) at: ('pseudoAddress').
    recoveredValue11 := (self) recordClass.
    recoveredValue12 := (recoveredValue11) pseudoAddressLength.
    recoveredValue13 := Schseg.
    recoveredValue14 := (recoveredValue8) create: (recoveredValue10) length: (recoveredValue12) mode: (recoveredValue13).
    recoveredLocal4 := recoveredValue14.
    recoveredValue15 := (self) pseudoAddressSeg.
    recoveredValue16 := recoveredLocal4.
    (recoveredValue15) segAt: (0) put: (recoveredValue16).
    ^self
! !

