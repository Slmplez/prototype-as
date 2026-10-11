"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001e78; bytecode file offset 0x8ffcfc"
!SGIlLValue methodsFor: 'recovered'!
asIleLValue
    ^self
! !

"ASDBase.ic method 0x2002e9f4; bytecode file offset 0x934580"
!SGIlLValue methodsFor: 'recovered'!
scope
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) scope.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f764; bytecode file offset 0x934580"
!SGIlLValue methodsFor: 'recovered'!
isIleRedundantData
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) isIleRedundantData.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031654; bytecode file offset 0x934580"
!SGIlLValue methodsFor: 'recovered'!
ileAssignmentLimitInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) ileAssignmentLimitInterval.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035054; bytecode file offset 0x934580"
!SGIlLValue methodsFor: 'recovered'!
elementType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) elementType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037c04; bytecode file offset 0x934580"
!SGIlLValue methodsFor: 'recovered'!
hasIleLoggableVariable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) hasIleLoggableVariable.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20054d2c; bytecode file offset 0x952a9c"
!SGIlLValue methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) lValueExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200551a0; bytecode file offset 0x952a9c"
!SGIlLValue methodsFor: 'recovered'!
assign: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) assignTo: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20057368; bytecode file offset 0x956284"
!SGIlLValue methodsFor: 'recovered'!
hasSameScope: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) hasSameScope: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200594e8; bytecode file offset 0x956284"
!SGIlLValue methodsFor: 'recovered'!
ileMayChangeResultOfExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) ileMayChangeResultOfExpr: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20076f5c; bytecode file offset 0x9757c8"
!SGIlLValue methodsFor: 'recovered'!
isIleLValue
    ^true
! !

"ASDBase.ic method 0x200b28a0; bytecode file offset 0x9af164"
!SGIlLValue methodsFor: 'recovered'!
expandImplInfo
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) source.
    recoveredValue1 := (self) expr.
    recoveredValue2 := (recoveredValue1) errLabelImplInfoComment.
    recoveredValue3 := (self) expandImplInfoSource: (recoveredValue0) assignToErrLabel: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20108b5c; bytecode file offset 0xa05448"
!SGIlLValue methodsFor: 'recovered'!
precedenceLevel
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) name.
    recoveredValue3 := ('Cannot add parenthesis around ') , (recoveredValue2).
    (recoveredValue0) fatalMessage: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201cea50; bytecode file offset 0xacb334"
!SGIlLValue methodsFor: 'recovered'!
createOpExpr: recoveredArg1 type: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) expr: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

