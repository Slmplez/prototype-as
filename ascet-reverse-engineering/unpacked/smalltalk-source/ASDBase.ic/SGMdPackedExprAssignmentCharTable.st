"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002c304; bytecode file offset 0x934580"
!SGMdPackedExprAssignmentCharTable methodsFor: 'recovered'!
xDistribVarName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) distributions.
    recoveredValue1 := (recoveredValue0) first.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030624; bytecode file offset 0x934580"
!SGMdPackedExprAssignmentCharTable methodsFor: 'recovered'!
xDistribution
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) distributions.
    recoveredValue1 := (recoveredValue0) first.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20056100; bytecode file offset 0x952a9c"
!SGMdPackedExprAssignmentCharTable methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlPackedExprAssignmentCharTable: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006d090; bytecode file offset 0x969c04"
!SGMdPackedExprAssignmentCharTable methodsFor: 'recovered'!
distributions
    | recoveredValue0 |
    recoveredValue0 := distributions.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d6ec; bytecode file offset 0x96a390"
!SGMdPackedExprAssignmentCharTable methodsFor: 'recovered'!
ileExtrapolationValue
    | recoveredValue0 |
    recoveredValue0 := ileExtrapolationValue.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bcec8; bytecode file offset 0x9b97d4"
!SGMdPackedExprAssignmentCharTable methodsFor: 'recovered'!
xDistribVarName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) distributions.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: (1) put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bcf54; bytecode file offset 0x9b9850"
!SGMdPackedExprAssignmentCharTable methodsFor: 'recovered'!
yDistribVarName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) distributions.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: (2) put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c3b70; bytecode file offset 0x9c058c"
!SGMdPackedExprAssignmentCharTable methodsFor: 'recovered'!
distributions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    distributions := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c41ec; bytecode file offset 0x9c0bf0"
!SGMdPackedExprAssignmentCharTable methodsFor: 'recovered'!
ileExtrapolationValue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ileExtrapolationValue := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2012f260; bytecode file offset 0xa2bb20"
!SGMdPackedExprAssignmentCharTable methodsFor: 'recovered'!
yDistribVarName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) distributions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) distributions.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020ad8c; bytecode file offset 0xb07678"
!SGMdPackedExprAssignmentCharTable methodsFor: 'recovered'!
yDistribution
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := (self) distributions.
    recoveredBlock4Value1 := (recoveredBlock4Value0) size.
    recoveredBlock4Value2 := (recoveredBlock4Value1) = (2).
    recoveredBlock4Value2
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    'yDistribution should only be called for 2D char tables'
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) distributions.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

