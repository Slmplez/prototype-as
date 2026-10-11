"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200665bc; bytecode file offset 0x963428"
!AbtOleMainWindowAttributes methodsFor: 'recovered'!
fileMenuView
    | recoveredValue0 |
    recoveredValue0 := fileMenuView.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067c8c; bytecode file offset 0x9646f8"
!AbtOleMainWindowAttributes methodsFor: 'recovered'!
containerMenuView
    | recoveredValue0 |
    recoveredValue0 := containerMenuView.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068024; bytecode file offset 0x965b90"
!AbtOleMainWindowAttributes methodsFor: 'recovered'!
hostName
    | recoveredValue0 |
    recoveredValue0 := hostName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069a70; bytecode file offset 0x966bdc"
!AbtOleMainWindowAttributes methodsFor: 'recovered'!
windowMenuView
    | recoveredValue0 |
    recoveredValue0 := windowMenuView.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bdf7c; bytecode file offset 0x9bb178"
!AbtOleMainWindowAttributes methodsFor: 'recovered'!
fileMenuView: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fileMenuView := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf040; bytecode file offset 0x9bc0b4"
!AbtOleMainWindowAttributes methodsFor: 'recovered'!
containerMenuView: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    containerMenuView := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c04f4; bytecode file offset 0x9bd228"
!AbtOleMainWindowAttributes methodsFor: 'recovered'!
hostName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    hostName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c11c0; bytecode file offset 0x9bdf14"
!AbtOleMainWindowAttributes methodsFor: 'recovered'!
windowMenuView: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    windowMenuView := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20476f84; bytecode file offset 0xd73870"
!AbtOleMainWindowAttributes methodsFor: 'recovered'!
widgetPostCreationArgBlock
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) containerMenuView.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            (recoveredBlock4Stack0 == nil) ifTrue: [recoveredBlock4PC := 40] ifFalse: [recoveredBlock4PC := 14].
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) containerMenuView.
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) parentView.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) widget.
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            (recoveredBlock4Stack0 ~~ nil) ifTrue: [recoveredBlock4PC := 30] ifFalse: [recoveredBlock4PC := 22].
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) containerMenuView.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) parentView.
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            (recoveredBlock4Stack1) createWidget.
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            (recoveredBlock4Stack0) setPostCreationSettings.
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Arg1.
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            recoveredBlock4Stack1 := Array.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) containerMenuView.
            recoveredBlock4PC := 35.
        ].
        recoveredBlock4Step = 35 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) widget.
            recoveredBlock4PC := 36.
        ].
        recoveredBlock4Step = 36 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) with: (recoveredBlock4Stack2).
            recoveredBlock4PC := 38.
        ].
        recoveredBlock4Step = 38 ifTrue: [
            (recoveredBlock4Stack0) containerMenuGroup: (recoveredBlock4Stack1).
            recoveredBlock4PC := 40.
        ].
        recoveredBlock4Step = 40 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 41.
        ].
        recoveredBlock4Step = 41 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) fileMenuView.
            recoveredBlock4PC := 43.
        ].
        recoveredBlock4Step = 43 ifTrue: [
            (recoveredBlock4Stack0 == nil) ifTrue: [recoveredBlock4PC := 74] ifFalse: [recoveredBlock4PC := 46].
        ].
        recoveredBlock4Step = 46 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 47.
        ].
        recoveredBlock4Step = 47 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) fileMenuView.
            recoveredBlock4PC := 49.
        ].
        recoveredBlock4Step = 49 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) parentView.
            recoveredBlock4PC := 50.
        ].
        recoveredBlock4Step = 50 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) widget.
            recoveredBlock4PC := 51.
        ].
        recoveredBlock4Step = 51 ifTrue: [
            (recoveredBlock4Stack0 ~~ nil) ifTrue: [recoveredBlock4PC := 63] ifFalse: [recoveredBlock4PC := 54].
        ].
        recoveredBlock4Step = 54 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 55.
        ].
        recoveredBlock4Step = 55 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) fileMenuView.
            recoveredBlock4PC := 57.
        ].
        recoveredBlock4Step = 57 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) parentView.
            recoveredBlock4PC := 58.
        ].
        recoveredBlock4Step = 58 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 59.
        ].
        recoveredBlock4Step = 59 ifTrue: [
            (recoveredBlock4Stack1) createWidget.
            recoveredBlock4PC := 61.
        ].
        recoveredBlock4Step = 61 ifTrue: [
            (recoveredBlock4Stack0) setPostCreationSettings.
            recoveredBlock4PC := 63.
        ].
        recoveredBlock4Step = 63 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Arg1.
            recoveredBlock4PC := 64.
        ].
        recoveredBlock4Step = 64 ifTrue: [
            recoveredBlock4Stack1 := Array.
            recoveredBlock4PC := 66.
        ].
        recoveredBlock4Step = 66 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 67.
        ].
        recoveredBlock4Step = 67 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) fileMenuView.
            recoveredBlock4PC := 69.
        ].
        recoveredBlock4Step = 69 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) widget.
            recoveredBlock4PC := 70.
        ].
        recoveredBlock4Step = 70 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) with: (recoveredBlock4Stack2).
            recoveredBlock4PC := 72.
        ].
        recoveredBlock4Step = 72 ifTrue: [
            (recoveredBlock4Stack0) fileMenuGroup: (recoveredBlock4Stack1).
            recoveredBlock4PC := 74.
        ].
        recoveredBlock4Step = 74 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 75.
        ].
        recoveredBlock4Step = 75 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) windowMenuView.
            recoveredBlock4PC := 77.
        ].
        recoveredBlock4Step = 77 ifTrue: [
            (recoveredBlock4Stack0 == nil) ifTrue: [recoveredBlock4PC := 108] ifFalse: [recoveredBlock4PC := 80].
        ].
        recoveredBlock4Step = 80 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 81.
        ].
        recoveredBlock4Step = 81 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) windowMenuView.
            recoveredBlock4PC := 83.
        ].
        recoveredBlock4Step = 83 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) parentView.
            recoveredBlock4PC := 84.
        ].
        recoveredBlock4Step = 84 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) widget.
            recoveredBlock4PC := 85.
        ].
        recoveredBlock4Step = 85 ifTrue: [
            (recoveredBlock4Stack0 ~~ nil) ifTrue: [recoveredBlock4PC := 97] ifFalse: [recoveredBlock4PC := 88].
        ].
        recoveredBlock4Step = 88 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 89.
        ].
        recoveredBlock4Step = 89 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) windowMenuView.
            recoveredBlock4PC := 91.
        ].
        recoveredBlock4Step = 91 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) parentView.
            recoveredBlock4PC := 92.
        ].
        recoveredBlock4Step = 92 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 93.
        ].
        recoveredBlock4Step = 93 ifTrue: [
            (recoveredBlock4Stack1) createWidget.
            recoveredBlock4PC := 95.
        ].
        recoveredBlock4Step = 95 ifTrue: [
            (recoveredBlock4Stack0) setPostCreationSettings.
            recoveredBlock4PC := 97.
        ].
        recoveredBlock4Step = 97 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Arg1.
            recoveredBlock4PC := 98.
        ].
        recoveredBlock4Step = 98 ifTrue: [
            recoveredBlock4Stack1 := Array.
            recoveredBlock4PC := 100.
        ].
        recoveredBlock4Step = 100 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 101.
        ].
        recoveredBlock4Step = 101 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) windowMenuView.
            recoveredBlock4PC := 103.
        ].
        recoveredBlock4Step = 103 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) widget.
            recoveredBlock4PC := 104.
        ].
        recoveredBlock4Step = 104 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) with: (recoveredBlock4Stack2).
            recoveredBlock4PC := 106.
        ].
        recoveredBlock4Step = 106 ifTrue: [
            (recoveredBlock4Stack0) windowMenuGroup: (recoveredBlock4Stack1).
            recoveredBlock4PC := 108.
        ].
        recoveredBlock4Step = 108 ifTrue: [
            recoveredBlock4Stack0 := nil.
            recoveredBlock4PC := 109.
        ].
        recoveredBlock4Step = 109 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 110.
        ].
        recoveredBlock4Step = 110 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) hostName.
            recoveredBlock4PC := 112.
        ].
        recoveredBlock4Step = 112 ifTrue: [
            (recoveredBlock4Stack1 == nil) ifTrue: [recoveredBlock4PC := 123] ifFalse: [recoveredBlock4PC := 116].
        ].
        recoveredBlock4Step = 116 ifTrue: [
            recoveredBlock4PC := 117.
        ].
        recoveredBlock4Step = 117 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Arg1.
            recoveredBlock4PC := 118.
        ].
        recoveredBlock4Step = 118 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 119.
        ].
        recoveredBlock4Step = 119 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) hostName.
            recoveredBlock4PC := 121.
        ].
        recoveredBlock4Step = 121 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) hostName: (recoveredBlock4Stack1).
            recoveredBlock4PC := 123.
        ].
        recoveredBlock4Step = 123 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    ^recoveredValue0
! !

