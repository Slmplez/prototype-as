"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200140d0; bytecode file offset 0x912098"
!SGTextSpecificationEditorView class methodsFor: 'recovered'!
controllerClass
    | recoveredValue0 |
    recoveredValue0 := SGTextSpecificationCtrl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200230a8; bytecode file offset 0x92209c"
!SGTextSpecificationEditorView class methodsFor: 'recovered'!
editorName
    ^'ESDL Editor'
! !

"ASDBase.ic method 0x200753d4; bytecode file offset 0x9757c8"
!SGTextSpecificationEditorView class methodsFor: 'recovered'!
hasElementsPalette
    ^true
! !

"ASDBase.ic method 0x200777fc; bytecode file offset 0x9757c8"
!SGTextSpecificationEditorView class methodsFor: 'recovered'!
isTextSpecificationEditorView
    ^true
! !

"ASDBase.ic method 0x20128438; bytecode file offset 0xa24eb0"
!SGTextSpecificationEditorView class methodsFor: 'recovered'!
textPrintingManager
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := TextPrintingManager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CwTextPrintingManager.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            TextPrintingManager := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := TextPrintingManager.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

