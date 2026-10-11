"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004e708; bytecode file offset 0x94d048"
!AbtBitmapDescriptor class methodsFor: 'recovered'!
startUp
    (self) reinitializeBitmaps.
    ^self
! !

"ASDBase.ic method 0x2004f65c; bytecode file offset 0x94d048"
!AbtBitmapDescriptor class methodsFor: 'recovered'!
exiting
    (self) freeBitmaps.
    ^self
! !

"ASDBase.ic method 0x20056250; bytecode file offset 0x952c58"
!AbtBitmapDescriptor class methodsFor: 'recovered'!
freeBitmap: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) free.
    ^self
! !

"ASDBase.ic method 0x20139f50; bytecode file offset 0xa3686c"
!AbtBitmapDescriptor class methodsFor: 'recovered'!
reinitializeBitmaps
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Bitmaps.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Bitmaps.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            Bitmaps := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016e7d4; bytecode file offset 0xa6b0f8"
!AbtBitmapDescriptor class methodsFor: 'recovered'!
bitmaps
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Bitmaps.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := AbtWeakValueLookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 'freeBitmap:'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner: (recoveredStack2) finalizeSelector: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            Bitmaps := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := Bitmaps.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20223d8c; bytecode file offset 0xb20678"
!AbtBitmapDescriptor class methodsFor: 'recovered'!
freeBitmaps
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Bitmaps.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Bitmaps.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:block280dbe04Arg1 | 
    | block280dbe04Stack0 block280dbe04Stack1 block280dbe04Stack2 block280dbe04Stack3 block280dbe04PC block280dbe04Step block280dbe04Done block280dbe04Result |
    block280dbe04Stack0 := self.
    block280dbe04PC := 4.
    block280dbe04Done := false.
    [block280dbe04Done not] whileTrue: [
        block280dbe04Step := block280dbe04PC.
        block280dbe04Step = 4 ifTrue: [
            block280dbe04Stack1 := nil.
            block280dbe04PC := 5.
        ].
        block280dbe04Step = 5 ifTrue: [
            block280dbe04Stack2 := block280dbe04Arg1.
            block280dbe04PC := 6.
        ].
        block280dbe04Step = 6 ifTrue: [
            (block280dbe04Stack2 == nil) ifTrue: [block280dbe04PC := 13] ifFalse: [block280dbe04PC := 10].
        ].
        block280dbe04Step = 10 ifTrue: [
            block280dbe04PC := 11.
        ].
        block280dbe04Step = 11 ifTrue: [
            block280dbe04Stack1 := block280dbe04Arg1.
            block280dbe04PC := 12.
        ].
        block280dbe04Step = 12 ifTrue: [
            block280dbe04Stack1 := (block280dbe04Stack1) free.
            block280dbe04PC := 13.
        ].
        block280dbe04Step = 13 ifTrue: [
            block280dbe04Result := block280dbe04Stack1.
            block280dbe04Done := true.
        ].
    ].
    block280dbe04Result
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) reinitializeBitmaps.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

