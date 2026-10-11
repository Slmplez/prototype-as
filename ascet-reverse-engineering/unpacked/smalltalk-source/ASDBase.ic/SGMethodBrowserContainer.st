"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002ec94; bytecode file offset 0x934580"
!SGMethodBrowserContainer methodsFor: 'recovered'!
item
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) contents.
    recoveredValue1 := (recoveredValue0) ownerSGClass.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200863f0; bytecode file offset 0x982e18"
!SGMethodBrowserContainer methodsFor: 'recovered'!
containsElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) contents.
    recoveredValue1 := (recoveredValue0) methodElements.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) includes: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2010a9c8; bytecode file offset 0xa072f4"
!SGMethodBrowserContainer methodsFor: 'recovered'!
longLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) contents.
    recoveredValue1 := (recoveredValue0) label.
    recoveredValue2 := (recoveredValue1) , (' - ').
    recoveredValue3 := (self) item.
    recoveredValue4 := (recoveredValue3) importLabel.
    recoveredValue5 := (recoveredValue2) , (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2024f0cc; bytecode file offset 0xb4b9a0"
!SGMethodBrowserContainer methodsFor: 'recovered'!
referencedBy
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    ^#()
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObjectIfUndefined: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkReferencesBy.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [:block280ded8cArg1 | 
    | block280ded8cValue0 block280ded8cValue1 block280ded8cValue2 |
    block280ded8cValue0 := SGItemBrowserContainer.
    block280ded8cValue1 := block280ded8cArg1.
    block280ded8cValue2 := (block280ded8cValue0) createFor: (block280ded8cValue1).
    block280ded8cValue2
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

