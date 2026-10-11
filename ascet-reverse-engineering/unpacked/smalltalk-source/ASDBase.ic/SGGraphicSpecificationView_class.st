"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200170cc; bytecode file offset 0x92209c"
!SGGraphicSpecificationView class methodsFor: 'recovered'!
graphicBlockString
    ^'Graphic Blocks'
! !

"ASDBase.ic method 0x20025e64; bytecode file offset 0x923928"
!SGGraphicSpecificationView class methodsFor: 'recovered'!
seqCallString
    ^'Sequence Calls'
! !

"ASDBase.ic method 0x20054104; bytecode file offset 0x951190"
!SGGraphicSpecificationView class methodsFor: 'recovered'!
LastUseGraphicsExportPath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    LastUseGraphicsExportPath := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2007538c; bytecode file offset 0x9757c8"
!SGGraphicSpecificationView class methodsFor: 'recovered'!
hasGraphicsToolbar
    ^true
! !

"ASDBase.ic method 0x20076594; bytecode file offset 0x9757c8"
!SGGraphicSpecificationView class methodsFor: 'recovered'!
isGraphicSpecificationView
    ^true
! !

"ASDBase.ic method 0x20076f94; bytecode file offset 0x9757c8"
!SGGraphicSpecificationView class methodsFor: 'recovered'!
hasElementsPalette
    ^true
! !

"ASDBase.ic method 0x20078bac; bytecode file offset 0x9757c8"
!SGGraphicSpecificationView class methodsFor: 'recovered'!
hasGraphicsPalette
    ^true
! !

"ASDBase.ic method 0x2013a100; bytecode file offset 0xa369dc"
!SGGraphicSpecificationView class methodsFor: 'recovered'!
LastUseGraphicsExportPath
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LastUseGraphicsExportPath.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := EtasGeneralDllApi.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) getAppDataPath.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) LastUseGraphicsExportPath: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := LastUseGraphicsExportPath.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

