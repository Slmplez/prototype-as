"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20028834; bytecode file offset 0x934580"
!SGIlObject class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d2b8; bytecode file offset 0x93bf94"
!SGIlObject class methodsFor: 'recovered'!
ileBuilder
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIleBuilder.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e968; bytecode file offset 0x93bf94"
!SGIlObject class methodsFor: 'recovered'!
currentIleExpander
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIlExpander.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20048d5c; bytecode file offset 0x945728"
!SGIlObject class methodsFor: 'recovered'!
prepareCodeGeneration
    InactiveNodeVisitorSingleton := nil.
    ^self
! !

"ASDBase.ic method 0x2018d190; bytecode file offset 0xa89a74"
!SGIlObject class methodsFor: 'recovered'!
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
    | block280d13dcValue0 block280d13dcValue1 block280d13dcValue2 |
    block280d13dcValue0 := SGIlInactiveNodeVisitor.
    block280d13dcValue1 := (block280d13dcValue0) create.
    block280d13dcValue2 := block280d13dcValue1.
    InactiveNodeVisitorSingleton := block280d13dcValue2.
    block280d13dcValue1
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

