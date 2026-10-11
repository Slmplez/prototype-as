"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006b3c; bytecode file offset 0x908be4"
!ASDAbstractProjectEditorToolboxWidget class methodsFor: 'recovered'!
widgetAtom
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001e7b8; bytecode file offset 0x92209c"
!ASDAbstractProjectEditorToolboxWidget class methodsFor: 'recovered'!
projectEditorIcon
    ^'EditorProjectFiles'
! !

"ASDBase.ic method 0x2003e7c8; bytecode file offset 0x93bf94"
!ASDAbstractProjectEditorToolboxWidget class methodsFor: 'recovered'!
projectEditorPageLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGReservedNames.
    recoveredValue1 := (recoveredValue0) undefName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20059bfc; bytecode file offset 0x9566ac"
!ASDAbstractProjectEditorToolboxWidget class methodsFor: 'recovered'!
createWidgetHierarchyFor: recoveredArg1 form: recoveredArg2
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200775fc; bytecode file offset 0x9757c8"
!ASDAbstractProjectEditorToolboxWidget class methodsFor: 'recovered'!
isAbstract
    ^true
! !

"ASDBase.ic method 0x200cfd1c; bytecode file offset 0x9cc5d4"
!ASDAbstractProjectEditorToolboxWidget class methodsFor: 'recovered'!
visibilityBlock
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280c3240Arg1 | 
    false
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

