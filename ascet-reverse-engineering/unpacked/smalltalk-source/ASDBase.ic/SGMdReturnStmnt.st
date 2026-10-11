"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20055ecc; bytecode file offset 0x952a9c"
!SGMdReturnStmnt methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) returnStmnt: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006d180; bytecode file offset 0x969c04"
!SGMdReturnStmnt methodsFor: 'recovered'!
child
    | recoveredValue0 |
    recoveredValue0 := child.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20079574; bytecode file offset 0x97c330"
!SGMdReturnStmnt methodsFor: 'recovered'!
hasExitStmnt
    ^false
! !

"ASDBase.ic method 0x200889d0; bytecode file offset 0x985628"
!SGMdReturnStmnt methodsFor: 'recovered'!
children
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) child.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c3818; bytecode file offset 0x9c058c"
!SGMdReturnStmnt methodsFor: 'recovered'!
child: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    child := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20161b24; bytecode file offset 0xa5e3ec"
!SGMdReturnStmnt methodsFor: 'recovered'!
mdlClass
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodDecl.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlServerRunnableDecl.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodDecl.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationDecl.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := super mdlClass.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20184d14; bytecode file offset 0xa815e0"
!SGMdReturnStmnt methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPutAll: ('return ').
    recoveredValue1 := (self) child.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) printOn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) nextPutAll: (';').
    (recoveredValue3) cr.
    ^self
! !

