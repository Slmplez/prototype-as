"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004ef9c; bytecode file offset 0x94d048"
!SGIlAbstractFactory class methodsFor: 'recovered'!
prepareCodeGeneration
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004fbb4; bytecode file offset 0x94d048"
!SGIlAbstractFactory class methodsFor: 'recovered'!
current
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20053604; bytecode file offset 0x9505d0"
!SGIlAbstractFactory class methodsFor: 'recovered'!
createCurrent: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2018d174; bytecode file offset 0xa89a74"
!SGIlAbstractFactory class methodsFor: 'recovered'!
inactiveNodeVisitorSingleton
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := InactiveNodeVisitorSingleton.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block280d13b8Value0 block280d13b8Value1 block280d13b8Value2 |
    block280d13b8Value0 := SGIlInactiveNodeVisitor.
    block280d13b8Value1 := (block280d13b8Value0) create.
    block280d13b8Value2 := block280d13b8Value1.
    InactiveNodeVisitorSingleton := block280d13b8Value2.
    block280d13b8Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := InactiveNodeVisitorSingleton.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

