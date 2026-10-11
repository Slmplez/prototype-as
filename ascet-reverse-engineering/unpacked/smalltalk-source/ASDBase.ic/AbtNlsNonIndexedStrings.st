"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005ed4c; bytecode file offset 0x95b600"
!AbtNlsNonIndexedStrings methodsFor: 'recovered'!
resetPartStrings
    partStrings := nil.
    ^nil
! !

"ASDBase.ic method 0x2005ed60; bytecode file offset 0x95b614"
!AbtNlsNonIndexedStrings methodsFor: 'recovered'!
resetPoolStrings
    poolStrings := nil.
    ^nil
! !

"ASDBase.ic method 0x2009b720; bytecode file offset 0x99803c"
!AbtNlsNonIndexedStrings methodsFor: 'recovered'!
bindToRunningImage
    (self) bindPartStrings.
    (self) bindPoolStrings.
    ^self
! !

"ASDBase.ic method 0x2017ed90; bytecode file offset 0xa7b65c"
!AbtNlsNonIndexedStrings methodsFor: 'recovered'!
partStrings
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := partStrings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            partStrings := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := partStrings.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017eefc; bytecode file offset 0xa7b7c8"
!AbtNlsNonIndexedStrings methodsFor: 'recovered'!
poolStrings
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := poolStrings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            poolStrings := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := poolStrings.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20282a70; bytecode file offset 0xb7f354"
!AbtNlsNonIndexedStrings methodsFor: 'recovered'!
bindPartStrings
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) partStrings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280e15c4Arg1 | 
    | block280e15c4Local1 block280e15c4Stack0 block280e15c4Stack1 block280e15c4Stack2 block280e15c4Stack3 block280e15c4Stack4 block280e15c4PC block280e15c4Step block280e15c4Done block280e15c4Result |
    block280e15c4Stack0 := self.
    block280e15c4PC := 4.
    block280e15c4Done := false.
    [block280e15c4Done not] whileTrue: [
        block280e15c4Step := block280e15c4PC.
        block280e15c4Step = 4 ifTrue: [
            block280e15c4Stack1 := System.
            block280e15c4PC := 6.
        ].
        block280e15c4Step = 6 ifTrue: [
            block280e15c4Stack1 := (block280e15c4Stack1) image.
            block280e15c4PC := 7.
        ].
        block280e15c4Step = 7 ifTrue: [
            block280e15c4Stack1 := (block280e15c4Stack1) globalNamespace.
            block280e15c4PC := 9.
        ].
        block280e15c4Step = 9 ifTrue: [
            block280e15c4Stack2 := block280e15c4Arg1.
            block280e15c4PC := 10.
        ].
        block280e15c4Step = 10 ifTrue: [
            block280e15c4Stack2 := (block280e15c4Stack2) key.
            block280e15c4PC := 12.
        ].
        block280e15c4Step = 12 ifTrue: [
            block280e15c4Stack2 := (block280e15c4Stack2) asSymbol.
            block280e15c4PC := 14.
        ].
        block280e15c4Step = 14 ifTrue: [
            block280e15c4Stack3 := [].
            block280e15c4PC := 16.
        ].
        block280e15c4Step = 16 ifTrue: [
            block280e15c4Stack1 := (block280e15c4Stack1) classAt: (block280e15c4Stack2) ifAbsent: (block280e15c4Stack3).
            block280e15c4PC := 18.
        ].
        block280e15c4Step = 18 ifTrue: [
            block280e15c4Local1 := block280e15c4Stack1.
            block280e15c4PC := 19.
        ].
        block280e15c4Step = 19 ifTrue: [
            block280e15c4Stack1 := nil.
            block280e15c4PC := 20.
        ].
        block280e15c4Step = 20 ifTrue: [
            block280e15c4Stack2 := block280e15c4Local1.
            block280e15c4PC := 21.
        ].
        block280e15c4Step = 21 ifTrue: [
            (block280e15c4Stack2 == nil) ifTrue: [block280e15c4PC := 31] ifFalse: [block280e15c4PC := 24].
        ].
        block280e15c4Step = 24 ifTrue: [
            block280e15c4PC := 25.
        ].
        block280e15c4Step = 25 ifTrue: [
            block280e15c4Stack1 := block280e15c4Local1.
            block280e15c4PC := 26.
        ].
        block280e15c4Step = 26 ifTrue: [
            block280e15c4Stack2 := block280e15c4Arg1.
            block280e15c4PC := 27.
        ].
        block280e15c4Step = 27 ifTrue: [
            block280e15c4Stack2 := (block280e15c4Stack2) value.
            block280e15c4PC := 29.
        ].
        block280e15c4Step = 29 ifTrue: [
            block280e15c4Stack1 := (block280e15c4Stack1) abtSeparatedConstants: (block280e15c4Stack2).
            block280e15c4PC := 31.
        ].
        block280e15c4Step = 31 ifTrue: [
            block280e15c4Result := block280e15c4Stack1.
            block280e15c4Done := true.
        ].
    ].
    block280e15c4Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202fbedc; bytecode file offset 0xbf87c0"
!AbtNlsNonIndexedStrings methodsFor: 'recovered'!
bindPoolStrings
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) poolStrings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280e9118Arg1 | 
    | block280e9118Local1 block280e9118Value0 block280e9118Value1 block280e9118Value2 block280e9118Value3 block280e9118Value4 block280e9118Value5 block280e9118Value6 block280e9118Value7 block280e9118Value8 block280e9118Value9 block280e9118Value10 block280e9118Value11 |
    block280e9118Value0 := System.
    block280e9118Value1 := (block280e9118Value0) image.
    block280e9118Value2 := (block280e9118Value1) globalNamespace.
    block280e9118Value3 := block280e9118Arg1.
    block280e9118Value4 := (block280e9118Value3) key.
    block280e9118Value5 := (block280e9118Value4) asSymbol.
    block280e9118Value6 := (block280e9118Value2) declarePoolDictionary: (block280e9118Value5).
    block280e9118Value7 := (block280e9118Value6) value.
    block280e9118Local1 := block280e9118Value7.
    block280e9118Value8 := block280e9118Arg1.
    block280e9118Value9 := (block280e9118Value8) value.
    block280e9118Value10 := [:block280e9118Block28Arg1 | 
    | block280e9118Block28Value0 block280e9118Block28Value1 block280e9118Block28Value2 |
    block280e9118Block28Value0 := block280e9118Local1.
    block280e9118Block28Value1 := block280e9118Block28Arg1.
    block280e9118Block28Value2 := (block280e9118Block28Value0) add: (block280e9118Block28Value1).
    block280e9118Block28Value2
].
    block280e9118Value11 := (block280e9118Value9) do: (block280e9118Value10).
    block280e9118Value11
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

