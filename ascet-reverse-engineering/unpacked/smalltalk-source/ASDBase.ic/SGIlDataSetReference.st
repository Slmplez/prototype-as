"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20004c30; bytecode file offset 0x90206c"
!SGIlDataSetReference methodsFor: 'recovered'!
createOpGoalInterval: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20007838; bytecode file offset 0x908be4"
!SGIlDataSetReference methodsFor: 'recovered'!
precedenceLevel
    | recoveredValue0 |
    recoveredValue0 := (self) precedenceLevelOfIdentifier.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000cad4; bytecode file offset 0x909658"
!SGIlDataSetReference methodsFor: 'recovered'!
ileDependsOnAccessExpr: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x200555c0; bytecode file offset 0x952a9c"
!SGIlDataSetReference methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) ileDataSetReference: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20069b08; bytecode file offset 0x966bdc"
!SGIlDataSetReference methodsFor: 'recovered'!
asIleName
    | recoveredValue0 |
    recoveredValue0 := ileName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200760d4; bytecode file offset 0x9757c8"
!SGIlDataSetReference methodsFor: 'recovered'!
isIleDataSetRefernce
    ^true
! !

"ASDBase.ic method 0x200d5824; bytecode file offset 0x9d21a8"
!SGIlDataSetReference methodsFor: 'recovered'!
ileWrapperHash
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super ileWrapperHash.
    recoveredValue1 := (self) asIleName.
    recoveredValue2 := (recoveredValue1) hash.
    recoveredValue3 := (recoveredValue0) + (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20101c90; bytecode file offset 0x9fe54c"
!SGIlDataSetReference methodsFor: 'recovered'!
initializeSource: recoveredArg1 type: recoveredArg2 ileName: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg3.
    ileName := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    super initializeSource: (recoveredValue1) type: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2018670c; bytecode file offset 0xa82fd4"
!SGIlDataSetReference methodsFor: 'recovered'!
createOpType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeOrNil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) asIleName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) ileName: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

