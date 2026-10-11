"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20001634; bytecode file offset 0x4c844"
!EsLargeSymbolSet class methodsFor: 'recovered'!
smallSymbolSet
    | recoveredValue0 |
    recoveredValue0 := EsSymbolSet.
    ^recoveredValue0
! !

"kernel.ic method 0x20002d98; bytecode file offset 0x4dce4"
!EsLargeSymbolSet class methodsFor: 'recovered'!
defaultNumberOfBins: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    DefaultNumberOfBins := recoveredValue0.
    ^self
! !

"kernel.ic method 0x200061d4; bytecode file offset 0x510ec"
!EsLargeSymbolSet class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) basicNew.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) defaultNumberOfBins.
    (recoveredValue1) initialize: (recoveredValue2).
    ^recoveredValue0
! !

"kernel.ic method 0x2000b818; bytecode file offset 0x56738"
!EsLargeSymbolSet class methodsFor: 'recovered'!
new: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) defaultNumberOfBins.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) computeDefaultBinSizeFor: (recoveredValue1).
    recoveredValue3 := (recoveredValue0) max: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) basicNew.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) initialize: (recoveredValue6).
    ^recoveredValue4
! !

"kernel.ic method 0x2000b8b4; bytecode file offset 0x567c8"
!EsLargeSymbolSet class methodsFor: 'recovered'!
defaultNumberOfBins
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := DefaultNumberOfBins.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 13.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) defaultNumberOfBins: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := DefaultNumberOfBins.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x200127b0; bytecode file offset 0x5d6cc"
!EsLargeSymbolSet class methodsFor: 'recovered'!
computeDefaultBinSizeFor: recoveredArg1
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
            recoveredStack2 := 2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) ln.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) ln.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) truncated.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

