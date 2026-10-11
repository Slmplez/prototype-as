"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20035e04; bytecode file offset 0x934580"
!ASDNvramCockpitCtrl methodsFor: 'recovered'!
getNvramCockpitConfig
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) userInterface.
    recoveredValue1 := (recoveredValue0) getNvramCockpitConfig.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20068ef4; bytecode file offset 0x965b90"
!ASDNvramCockpitCtrl methodsFor: 'recovered'!
measureSystemCtrl
    | recoveredValue0 |
    recoveredValue0 := measureSystemCtrl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008ee14; bytecode file offset 0x98b700"
!ASDNvramCockpitCtrl methodsFor: 'recovered'!
shutDown
    | recoveredValue0 |
    recoveredValue0 := (self) measureSystemCtrl.
    (recoveredValue0) nvramCockpitCtrl: (nil).
    ^self
! !

"ASDBase.ic method 0x200c01cc; bytecode file offset 0x9bd228"
!ASDNvramCockpitCtrl methodsFor: 'recovered'!
measureSystemCtrl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    measureSystemCtrl := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f9200; bytecode file offset 0x9f5ac0"
!ASDNvramCockpitCtrl methodsFor: 'recovered'!
isERCOSRunning
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemCtrl.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemCtrl.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRomCodeRunning.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

