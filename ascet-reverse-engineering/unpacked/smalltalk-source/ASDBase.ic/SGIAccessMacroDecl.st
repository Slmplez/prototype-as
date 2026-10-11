"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20009fb0; bytecode file offset 0x908be4"
!SGIAccessMacroDecl methodsFor: 'recovered'!
errLabel
    | recoveredValue0 |
    recoveredValue0 := (self) ileLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002b0d4; bytecode file offset 0x934580"
!SGIAccessMacroDecl methodsFor: 'recovered'!
type
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) elementDecl.
    recoveredValue1 := (recoveredValue0) type.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031cb4; bytecode file offset 0x934580"
!SGIAccessMacroDecl methodsFor: 'recovered'!
ileLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) elementDecl.
    recoveredValue1 := (recoveredValue0) ileLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005538c; bytecode file offset 0x952a9c"
!SGIAccessMacroDecl methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) macroDecl: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006a318; bytecode file offset 0x966bdc"
!SGIAccessMacroDecl methodsFor: 'recovered'!
originalExpr
    | recoveredValue0 |
    recoveredValue0 := originalExpr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a9ac; bytecode file offset 0x967a18"
!SGIAccessMacroDecl methodsFor: 'recovered'!
elementDecl
    | recoveredValue0 |
    recoveredValue0 := elementDecl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bdf8; bytecode file offset 0x96873c"
!SGIAccessMacroDecl methodsFor: 'recovered'!
referenceAccess
    | recoveredValue0 |
    recoveredValue0 := referenceAccess.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200f2ed8; bytecode file offset 0x9ef798"
!SGIAccessMacroDecl methodsFor: 'recovered'!
isIleReferencedAccessExpr
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) referenceAccess.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementDecl.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleExplicitReference.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20179ef4; bytecode file offset 0xa767b0"
!SGIAccessMacroDecl methodsFor: 'recovered'!
initializeSource: recoveredArg1 genName: recoveredArg2 expr: recoveredArg3 elementDecl: recoveredArg4 referenceAccess: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    originalExpr := recoveredValue0.
    recoveredValue1 := recoveredArg4.
    elementDecl := recoveredValue1.
    recoveredValue2 := recoveredArg5.
    referenceAccess := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    super initializeSource: (recoveredValue3) genName: (recoveredValue4).
    ^self
! !

