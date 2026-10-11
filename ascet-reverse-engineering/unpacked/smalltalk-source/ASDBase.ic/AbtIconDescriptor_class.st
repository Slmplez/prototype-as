"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004ed20; bytecode file offset 0x94d048"
!AbtIconDescriptor class methodsFor: 'recovered'!
startUp
    (self) reinitializeIcons.
    ^self
! !

"ASDBase.ic method 0x2004f98c; bytecode file offset 0x94d048"
!AbtIconDescriptor class methodsFor: 'recovered'!
exiting
    (self) freeIcons.
    ^self
! !

"ASDBase.ic method 0x20056328; bytecode file offset 0x952c58"
!AbtIconDescriptor class methodsFor: 'recovered'!
freeIcon: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) freeIcon.
    ^self
! !

"ASDBase.ic method 0x2005c94c; bytecode file offset 0x959680"
!AbtIconDescriptor class methodsFor: 'recovered'!
extent
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CgScreen.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) queryBestIconSize.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20139f80; bytecode file offset 0xa3686c"
!AbtIconDescriptor class methodsFor: 'recovered'!
reinitializeIcons
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Icons.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Icons.
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
            Icons := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016e7bc; bytecode file offset 0xa6b0f8"
!AbtIconDescriptor class methodsFor: 'recovered'!
icons
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Icons.
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
            recoveredStack3 := 'freeIcon:'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner: (recoveredStack2) finalizeSelector: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            Icons := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := Icons.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20223d6c; bytecode file offset 0xb20678"
!AbtIconDescriptor class methodsFor: 'recovered'!
freeIcons
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Icons.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Icons.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:block280dbde0Arg1 | 
    | block280dbde0Stack0 block280dbde0Stack1 block280dbde0Stack2 block280dbde0Stack3 block280dbde0PC block280dbde0Step block280dbde0Done block280dbde0Result |
    block280dbde0Stack0 := self.
    block280dbde0PC := 4.
    block280dbde0Done := false.
    [block280dbde0Done not] whileTrue: [
        block280dbde0Step := block280dbde0PC.
        block280dbde0Step = 4 ifTrue: [
            block280dbde0Stack1 := nil.
            block280dbde0PC := 5.
        ].
        block280dbde0Step = 5 ifTrue: [
            block280dbde0Stack2 := block280dbde0Arg1.
            block280dbde0PC := 6.
        ].
        block280dbde0Step = 6 ifTrue: [
            (block280dbde0Stack2 == nil) ifTrue: [block280dbde0PC := 13] ifFalse: [block280dbde0PC := 10].
        ].
        block280dbde0Step = 10 ifTrue: [
            block280dbde0PC := 11.
        ].
        block280dbde0Step = 11 ifTrue: [
            block280dbde0Stack1 := block280dbde0Arg1.
            block280dbde0PC := 12.
        ].
        block280dbde0Step = 12 ifTrue: [
            block280dbde0Stack1 := (block280dbde0Stack1) freeIcon.
            block280dbde0PC := 13.
        ].
        block280dbde0Step = 13 ifTrue: [
            block280dbde0Result := block280dbde0Stack1.
            block280dbde0Done := true.
        ].
    ].
    block280dbde0Result
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
            (recoveredStack1) reinitializeIcons.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

