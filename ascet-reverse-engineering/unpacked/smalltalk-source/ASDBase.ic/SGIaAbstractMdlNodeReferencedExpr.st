"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20028484; bytecode file offset 0x934580"
!SGIaAbstractMdlNodeReferencedExpr methodsFor: 'recovered'!
errLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlNode.
    recoveredValue1 := (recoveredValue0) errLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200679c4; bytecode file offset 0x9646f8"
!SGIaAbstractMdlNodeReferencedExpr methodsFor: 'recovered'!
interval
    | recoveredValue0 |
    recoveredValue0 := interval.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b358; bytecode file offset 0x96873c"
!SGIaAbstractMdlNodeReferencedExpr methodsFor: 'recovered'!
mdlNode
    | recoveredValue0 |
    recoveredValue0 := mdlNode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c2908; bytecode file offset 0x9bf474"
!SGIaAbstractMdlNodeReferencedExpr methodsFor: 'recovered'!
mdlNode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mdlNode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e5124; bytecode file offset 0x9e1a70"
!SGIaAbstractMdlNodeReferencedExpr methodsFor: 'recovered'!
source
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlNode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlNode.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) source.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

