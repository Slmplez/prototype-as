"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20127e84; bytecode file offset 0xa24748"
!EtasOSStatusBar methodsFor: 'recovered'!
basicStyle
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := WsChild.
    recoveredValue1 := WsVisible.
    recoveredValue2 := (recoveredValue0) bitOr: (recoveredValue1).
    recoveredValue3 := CcsNoresize.
    recoveredValue4 := (recoveredValue2) bitOr: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) bitOr: (2048).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201641f4; bytecode file offset 0xa60ab0"
!EtasOSStatusBar methodsFor: 'recovered'!
image: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := handle.
    recoveredValue1 := WmUser.
    recoveredValue2 := (recoveredValue1) + (15).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredValue3.
    image := recoveredValue4.
    (recoveredValue0) sendMessage: (recoveredValue2) wParam: (-1) lParam: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20176afc; bytecode file offset 0xa733c0"
!EtasOSStatusBar methodsFor: 'recovered'!
tip: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) handle.
    recoveredValue1 := WmUser.
    recoveredValue2 := (recoveredValue1) + (16).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredValue3.
    toolTipText := recoveredValue4.
    recoveredValue5 := (recoveredValue3) asParameter.
    (recoveredValue0) sendMessage: (recoveredValue2) wParam: (0) lParam: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201c918c; bytecode file offset 0xac5a54"
!EtasOSStatusBar methodsFor: 'recovered'!
recreate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
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
            super recreate.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := image.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) image: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := toolTipText.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) tip: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

