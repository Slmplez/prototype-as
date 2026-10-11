"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200091f4; bytecode file offset 0x908be4"
!ASDAbstractDialogOptions class methodsFor: 'recovered'!
availableCustomizableDialogDictionary
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20049174; bytecode file offset 0x945a28"
!ASDAbstractDialogOptions class methodsFor: 'recovered'!
resetAvailableCustomizableDialogs
    dialogs := nil.
    ^self
! !

"ASDBase.ic method 0x200d6400; bytecode file offset 0x9d3134"
!ASDAbstractDialogOptions class methodsFor: 'recovered'!
removeInstance
    super removeInstance.
    (self) resetAvailableCustomizableDialogs.
    ^self
! !

"ASDBase.ic method 0x201697dc; bytecode file offset 0xa660a8"
!ASDAbstractDialogOptions class methodsFor: 'recovered'!
addDialog: recoveredArg1 title: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) isCollection.
    (self) runtimeAssert: (recoveredValue1).
    recoveredValue2 := (self) availableCustomizableDialogs.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := Array.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6).
    (recoveredValue2) at: (recoveredValue3) put: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x2029f868; bytecode file offset 0xb9c140"
!ASDAbstractDialogOptions class methodsFor: 'recovered'!
availableCustomizableDialogs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dialogs.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) availableCustomizableDialogDictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            dialogs := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEtasInternalMode.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := dialogs.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := 'ASDConvertDatabasePrompter'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := Array.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack5 := 'Convert Database'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack6 := #('Show' 'OK').
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := dialogs.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

