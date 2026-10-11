"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x2000dc4c; bytecode file offset 0x58b70"
!EmApplicationSupport class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRunningImage.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'Default'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 'Kernel'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := 'SubApplication'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) initializeClassVariable: (recoveredStack2) to: (recoveredStack3) inClassNamed: (recoveredStack4).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2001dbac; bytecode file offset 0x68ae4"
!EmApplicationSupport class methodsFor: 'recovered'!
packagerIncludeDoitMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := EmSystemConfiguration.
    recoveredValue4 := (recoveredValue3) >> ('confirmer').
    (recoveredValue2) add: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := EmSystemConfiguration.
    recoveredValue7 := (recoveredValue6) >> ('confirmer:').
    (recoveredValue5) add: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := EmSystemConfiguration.
    recoveredValue10 := (recoveredValue9) >> ('informer').
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := EmSystemConfiguration.
    recoveredValue13 := (recoveredValue12) >> ('informer:').
    (recoveredValue11) add: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := EmSystemConfiguration.
    recoveredValue16 := (recoveredValue15) >> ('prompter').
    (recoveredValue14) add: (recoveredValue16).
    recoveredValue17 := recoveredValue1.
    recoveredValue18 := EmSystemConfiguration.
    recoveredValue19 := (recoveredValue18) >> ('prompter:').
    (recoveredValue17) add: (recoveredValue19).
    ^recoveredValue1
! !

