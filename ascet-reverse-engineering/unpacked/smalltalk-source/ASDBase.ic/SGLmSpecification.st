"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200646c4; bytecode file offset 0x961970"
!SGLmSpecification methodsFor: 'recovered'!
createLogicHeader
    | recoveredValue0 |
    recoveredValue0 := (self) logicModel.
    (recoveredValue0) createLogicHeader.
    ^self
! !

"ASDBase.ic method 0x2006692c; bytecode file offset 0x963428"
!SGLmSpecification methodsFor: 'recovered'!
modelSpec
    | recoveredValue0 |
    recoveredValue0 := modelSpec.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200669fc; bytecode file offset 0x963428"
!SGLmSpecification methodsFor: 'recovered'!
dataModelRef
    | recoveredValue0 |
    recoveredValue0 := modelSpec.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200679b4; bytecode file offset 0x9646f8"
!SGLmSpecification methodsFor: 'recovered'!
methods
    | recoveredValue0 |
    recoveredValue0 := methods.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068434; bytecode file offset 0x965b90"
!SGLmSpecification methodsFor: 'recovered'!
currentMethod
    | recoveredValue0 |
    recoveredValue0 := currentMethod.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20098244; bytecode file offset 0x995850"
!SGLmSpecification methodsFor: 'recovered'!
createLogicMethods: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) logicModel.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) createLogicMethods: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200be444; bytecode file offset 0x9bb178"
!SGLmSpecification methodsFor: 'recovered'!
modelSpec: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    modelSpec := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf8bc; bytecode file offset 0x9bd228"
!SGLmSpecification methodsFor: 'recovered'!
currentMethod: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    currentMethod := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d285c; bytecode file offset 0x9cf158"
!SGLmSpecification methodsFor: 'recovered'!
buildMdlOperatingSystem
    | recoveredValue0 |
    (self) logicSpec: (self).
    recoveredValue0 := (self) logicModel.
    (recoveredValue0) buildMdlOperatingSystem.
    ^self
! !

"ASDBase.ic method 0x200d2870; bytecode file offset 0x9cf158"
!SGLmSpecification methodsFor: 'recovered'!
buildMdlDeclarations
    | recoveredValue0 |
    (self) logicSpec: (self).
    recoveredValue0 := (self) logicModel.
    (recoveredValue0) buildMdlDeclarations.
    ^self
! !

"ASDBase.ic method 0x200d2884; bytecode file offset 0x9cf158"
!SGLmSpecification methodsFor: 'recovered'!
buildMdlMethods
    | recoveredValue0 |
    (self) logicSpec: (self).
    recoveredValue0 := (self) logicModel.
    (recoveredValue0) buildMdlMethods.
    ^self
! !

"ASDBase.ic method 0x200d2898; bytecode file offset 0x9cf158"
!SGLmSpecification methodsFor: 'recovered'!
collectPreprocessedCMethods
    | recoveredValue0 |
    (self) logicSpec: (self).
    recoveredValue0 := (self) logicModel.
    (recoveredValue0) collectPreprocessedCMethods.
    ^self
! !

"ASDBase.ic method 0x200f9e6c; bytecode file offset 0x9f6778"
!SGLmSpecification methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    methods := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x201192dc; bytecode file offset 0xa15ba0"
!SGLmSpecification methodsFor: 'recovered'!
prepareDiagramConversion
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) analyze.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) modelSpec.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBdSpecification.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) buildMdlMethods.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d5ee8; bytecode file offset 0xad27bc"
!SGLmSpecification methodsFor: 'recovered'!
analyze
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('Rl') == ('Call_71072').
    (self) logicSpec: (self).
    recoveredValue1 := (self) mdlBuilder.
    (recoveredValue1) preCtAnalyzing.
    recoveredValue2 := (self) logicModel.
    (recoveredValue2) analyze.
    recoveredValue3 := (self) mdlBuilder.
    (recoveredValue3) postCTAnalyzing.
    ^self
! !

