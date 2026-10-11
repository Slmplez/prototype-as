"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002ada4; bytecode file offset 0x934580"
!SGIlTempIdentifier methodsFor: 'recovered'!
isIleBooleanTypedExpr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) type.
    recoveredValue1 := (recoveredValue0) isIleBooleanType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034844; bytecode file offset 0x934580"
!SGIlTempIdentifier methodsFor: 'recovered'!
assignmentQuantType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) type.
    recoveredValue1 := (recoveredValue0) asNonQuantType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003843c; bytecode file offset 0x934d00"
!SGIlTempIdentifier methodsFor: 'recovered'!
isIleIdenticalTempIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) = (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041938; bytecode file offset 0x93e1ec"
!SGIlTempIdentifier methodsFor: 'recovered'!
hasAlreadyBeenDeclared
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := tempName.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200555fc; bytecode file offset 0x952a9c"
!SGIlTempIdentifier methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) tempIdentifier: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006ada4; bytecode file offset 0x967a18"
!SGIlTempIdentifier methodsFor: 'recovered'!
tempName
    | recoveredValue0 |
    recoveredValue0 := tempName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bd70; bytecode file offset 0x96873c"
!SGIlTempIdentifier methodsFor: 'recovered'!
charTableScope
    | recoveredValue0 |
    recoveredValue0 := charTableScope.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200783f4; bytecode file offset 0x9757c8"
!SGIlTempIdentifier methodsFor: 'recovered'!
isIleTempIdentifier
    ^true
! !

"ASDBase.ic method 0x2007a7d4; bytecode file offset 0x97c330"
!SGIlTempIdentifier methodsFor: 'recovered'!
isMsgCopy
    ^false
! !

"ASDBase.ic method 0x200a8708; bytecode file offset 0x9a502c"
!SGIlTempIdentifier methodsFor: 'recovered'!
charTableScope: recoveredArg1
    | recoveredValue0 |
    (self) assertSetterShouldNotBeUsed.
    recoveredValue0 := recoveredArg1.
    charTableScope := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bffbc; bytecode file offset 0x9bd228"
!SGIlTempIdentifier methodsFor: 'recovered'!
type: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    type := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c19ac; bytecode file offset 0x9beac8"
!SGIlTempIdentifier methodsFor: 'recovered'!
tempName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    tempName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20158668; bytecode file offset 0xa54f34"
!SGIlTempIdentifier methodsFor: 'recovered'!
initializeSource: recoveredArg1 type: recoveredArg2 goalInterval: recoveredArg3 tempName: recoveredArg4 charTableScope: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg4.
    tempName := recoveredValue0.
    recoveredValue1 := recoveredArg5.
    charTableScope := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    super initializeSource: (recoveredValue2) type: (recoveredValue3) goalInterval: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20160a48; bytecode file offset 0xa5d318"
!SGIlTempIdentifier methodsFor: 'recovered'!
createExplicitCopyExpr
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) source.
    recoveredValue2 := (self) typeOrNil.
    recoveredValue3 := (self) goalInterval.
    recoveredValue4 := (self) tempName.
    recoveredValue5 := (self) charTableScope.
    recoveredValue6 := (recoveredValue0) createSource: (recoveredValue1) type: (recoveredValue2) goalInterval: (recoveredValue3) tempName: (recoveredValue4) charTableScope: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201d94e0; bytecode file offset 0xad5e1c"
!SGIlTempIdentifier methodsFor: 'recovered'!
createOpCharTableScope: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) charTableScope.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) goalInterval.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := (recoveredStack4) tempName.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) goalInterval: (recoveredStack3) tempName: (recoveredStack4) charTableScope: (recoveredStack5).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20234b0c; bytecode file offset 0xb31424"
!SGIlTempIdentifier methodsFor: 'recovered'!
createOpType: recoveredArg1 goalInterval: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
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
            recoveredStack2 := (recoveredStack2) goalInterval.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := (recoveredStack4) tempName.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack5 := (recoveredStack5) charTableScope.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) goalInterval: (recoveredStack3) tempName: (recoveredStack4) charTableScope: (recoveredStack5).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

