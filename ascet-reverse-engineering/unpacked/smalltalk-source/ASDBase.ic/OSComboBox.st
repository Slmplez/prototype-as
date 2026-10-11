"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20032004; bytecode file offset 0x934580"
!OSComboBox methodsFor: 'recovered'!
copy
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) textWidget.
    recoveredValue1 := (recoveredValue0) copy.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20098274; bytecode file offset 0x995850"
!OSComboBox methodsFor: 'recovered'!
replace: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) textWidget.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) replace: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200fbc70; bytecode file offset 0x9f853c"
!OSComboBox methodsFor: 'recovered'!
setExtendedUI: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := handle.
    recoveredValue1 := CbSetextendedui.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) sendMessage: (recoveredValue1) wParam: (recoveredValue2) lParam: (0).
    ^self
! !

"ASDBase.ic method 0x200fbc80; bytecode file offset 0x9f853c"
!OSComboBox methodsFor: 'recovered'!
setDroppedWidth: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := handle.
    recoveredValue1 := CbSetdroppedwidth.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) sendMessage: (recoveredValue1) wParam: (recoveredValue2) lParam: (0).
    ^self
! !

"ASDBase.ic method 0x2011691c; bytecode file offset 0xa131d8"
!OSComboBox methodsFor: 'recovered'!
selectedText
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := textWidget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := textWidget.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedText.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201f17a8; bytecode file offset 0xaee068"
!OSComboBox methodsFor: 'recovered'!
paste
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) readOnly.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := handle.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := WmPaste.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) sendMessage: (recoveredStack1) wParam: (recoveredStack2) lParam: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

