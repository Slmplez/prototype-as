"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200561e4; bytecode file offset 0x952a9c"
!SGIlCharTableCast methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) charTableCastExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006a624; bytecode file offset 0x967a18"
!SGIlCharTableCast methodsFor: 'recovered'!
fromExpr
    | recoveredValue0 |
    recoveredValue0 := fromExpr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b2d8; bytecode file offset 0x96873c"
!SGIlCharTableCast methodsFor: 'recovered'!
toVarDecl
    | recoveredValue0 |
    recoveredValue0 := toVarDecl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c3b4; bytecode file offset 0x9692b0"
!SGIlCharTableCast methodsFor: 'recovered'!
toMethodDecl
    | recoveredValue0 |
    recoveredValue0 := toMethodDecl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007523c; bytecode file offset 0x9757c8"
!SGIlCharTableCast methodsFor: 'recovered'!
isIleCharTableCastExpr
    ^true
! !

"ASDBase.ic method 0x20198710; bytecode file offset 0xa94fdc"
!SGIlCharTableCast methodsFor: 'recovered'!
initializeSource: recoveredArg1 type: recoveredArg2 expr: recoveredArg3 fromExpr: recoveredArg4 toVarDecl: recoveredArg5 toMethodDecl: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg4.
    fromExpr := recoveredValue0.
    recoveredValue1 := recoveredArg5.
    toVarDecl := recoveredValue1.
    recoveredValue2 := recoveredArg6.
    toMethodDecl := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    super initializeSource: (recoveredValue3) type: (recoveredValue4) expr: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2021d250; bytecode file offset 0xb19b18"
!SGIlCharTableCast methodsFor: 'recovered'!
createOpExpr: recoveredArg1 type: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := fromExpr.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := toVarDecl.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack6 := toMethodDecl.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) expr: (recoveredStack3) fromExpr: (recoveredStack4) toVarDecl: (recoveredStack5) toMethodDecl: (recoveredStack6).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

