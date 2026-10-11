"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"parse.ic method 0x20000438; bytecode file offset 0x15ae4"
!EsAssignmentExpression methodsFor: 'recovered'!
instVarIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := variable.
    recoveredValue1 := (recoveredValue0) instVarIndex.
    ^recoveredValue1
! !

"parse.ic method 0x200004f0; bytecode file offset 0x15b54"
!EsAssignmentExpression methodsFor: 'recovered'!
messagesSent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := rhs.
    recoveredValue1 := (recoveredValue0) messagesSent.
    ^recoveredValue1
! !

"parse.ic method 0x20000a5c; bytecode file offset 0x160d8"
!EsAssignmentExpression methodsFor: 'recovered'!
variable
    | recoveredValue0 |
    recoveredValue0 := variable.
    ^recoveredValue0
! !

"parse.ic method 0x20000ad0; bytecode file offset 0x1614c"
!EsAssignmentExpression methodsFor: 'recovered'!
rhs
    | recoveredValue0 |
    recoveredValue0 := rhs.
    ^recoveredValue0
! !

"parse.ic method 0x20000c88; bytecode file offset 0x162dc"
!EsAssignmentExpression methodsFor: 'recovered'!
isAssignmentExpression
    ^true
! !

"parse.ic method 0x20001a84; bytecode file offset 0x170f0"
!EsAssignmentExpression methodsFor: 'recovered'!
variable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    variable := recoveredValue0.
    ^self
! !

"parse.ic method 0x20001ae0; bytecode file offset 0x1716c"
!EsAssignmentExpression methodsFor: 'recovered'!
rhs: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    rhs := recoveredValue0.
    ^self
! !

"parse.ic method 0x20001d54; bytecode file offset 0x173c0"
!EsAssignmentExpression methodsFor: 'recovered'!
subnodes
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := variable.
    recoveredValue2 := rhs.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"parse.ic method 0x20002100; bytecode file offset 0x17764"
!EsAssignmentExpression methodsFor: 'recovered'!
subnodesDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := variable.
    (recoveredValue1) value: (recoveredValue2).
    recoveredValue3 := rhs.
    recoveredValue4 := (recoveredValue0) value: (recoveredValue3).
    ^recoveredValue4
! !

"parse.ic method 0x20002ab8; bytecode file offset 0x18114"
!EsAssignmentExpression methodsFor: 'recovered'!
codeOn: recoveredArg1 valueRequired: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := rhs.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) generateCodeOn: (recoveredValue1) valueRequired: (true).
    recoveredValue2 := variable.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    (recoveredValue2) generateStoreOn: (recoveredValue3) valueRequired: (recoveredValue4).
    ^self
! !

"parse.ic method 0x20002d0c; bytecode file offset 0x18368"
!EsAssignmentExpression methodsFor: 'recovered'!
isSetter: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := variable.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isInstVar.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := rhs.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReferenceTo: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"parse.ic method 0x20002f68; bytecode file offset 0x185c4"
!EsAssignmentExpression methodsFor: 'recovered'!
resolveNamesIn: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := variable.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) resolveVariable: (recoveredValue1) in: (recoveredValue2) forStore: (true).
    recoveredValue3 := rhs.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue3) resolveNamesIn: (recoveredValue4) with: (recoveredValue5).
    ^self
! !

"parse.ic method 0x20003080; bytecode file offset 0x186e0"
!EsAssignmentExpression methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := variable.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) printOn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) nextPutAll: (' := ').
    recoveredValue3 := rhs.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) printOn: (recoveredValue4).
    ^self
! !

