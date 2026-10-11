"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x20000048; bytecode file offset 0x10088"
!AbtHeadlessAppContext class methodsFor: 'recovered'!
default
    ^self
! !

"abtdah.ic method 0x20000408; bytecode file offset 0x10494"
!AbtHeadlessAppContext class methodsFor: 'recovered'!
context
    | recoveredValue0 |
    recoveredValue0 := AppContext.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000590; bytecode file offset 0x105bc"
!AbtHeadlessAppContext class methodsFor: 'recovered'!
asyncExecInUI: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) value.
    ^recoveredValue1
! !

"abtdah.ic method 0x20003e1c; bytecode file offset 0x13e64"
!AbtHeadlessAppContext class methodsFor: 'recovered'!
startUp
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EsImageStartUp.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) globalNamespace.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 'CwAppContext'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) asSymbol.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) classAt: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            AppContext := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            AppContext := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

