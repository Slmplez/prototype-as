"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x200009c0; bytecode file offset 0x109ec"
!EmSelectorInformation methodsFor: 'recovered'!
initialize
    selectorsArray := #().
    ^self
! !

"abtdah.ic method 0x2000192c; bytecode file offset 0x11958"
!EmSelectorInformation methodsFor: 'recovered'!
abrSendTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := categoriesArray.
    recoveredValue2 := selectorsArray.
    recoveredValue3 := (recoveredValue0) perform: (recoveredValue1) withArguments: (recoveredValue2).
    ^recoveredValue3
! !

"abtdah.ic method 0x20001bf4; bytecode file offset 0x11c28"
!EmSelectorInformation methodsFor: 'recovered'!
abrSendTo: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ExceptionalEvent.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) abrSendTo: (recoveredValue0) withArguments: (recoveredValue3).
    ^recoveredValue4
! !

"abtdah.ic method 0x20003610; bytecode file offset 0x13644"
!EmSelectorInformation methodsFor: 'recovered'!
abrSendTo: recoveredArg1 withArguments: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := categoriesArray.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := selectorsArray.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack3 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := #().
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := selectorsArray.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) abrReplaceNilValuesWithElementsOf: (recoveredStack4).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) perform: (recoveredStack2) withArguments: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

