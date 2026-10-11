"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20009428; bytecode file offset 0x908be4"
!SGCgAbstractGenerationContext methodsFor: 'recovered'!
mdSettings
    | recoveredValue0 |
    recoveredValue0 := (self) codeGenerationOptions.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20027ef4; bytecode file offset 0x934580"
!SGCgAbstractGenerationContext methodsFor: 'recovered'!
dataStructureGenerator
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeGeneratorStrategy.
    recoveredValue1 := (recoveredValue0) dataStructureGenerator.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ac94; bytecode file offset 0x934580"
!SGCgAbstractGenerationContext methodsFor: 'recovered'!
stationOptions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) generationSettings.
    recoveredValue1 := (recoveredValue0) stationOptions.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002bac4; bytecode file offset 0x934580"
!SGCgAbstractGenerationContext methodsFor: 'recovered'!
osSettings
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) platform.
    recoveredValue1 := (recoveredValue0) osSettings.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f9f4; bytecode file offset 0x934580"
!SGCgAbstractGenerationContext methodsFor: 'recovered'!
integerArithmeticOptions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeGenerationOptions.
    recoveredValue1 := (recoveredValue0) iaSettings.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200343a4; bytecode file offset 0x934580"
!SGCgAbstractGenerationContext methodsFor: 'recovered'!
buildEnvironmentInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) generationSettings.
    recoveredValue1 := (recoveredValue0) buildEnvironmentInfo.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036b84; bytecode file offset 0x934580"
!SGCgAbstractGenerationContext methodsFor: 'recovered'!
codeGenerationOptions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) generationSettings.
    recoveredValue1 := (recoveredValue0) codeGenerationOptions.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036cd4; bytecode file offset 0x934580"
!SGCgAbstractGenerationContext methodsFor: 'recovered'!
target
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) platform.
    recoveredValue1 := (recoveredValue0) target.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004e0fc; bytecode file offset 0x94d048"
!SGCgAbstractGenerationContext methodsFor: 'recovered'!
asamMcdSettings
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004e168; bytecode file offset 0x94d048"
!SGCgAbstractGenerationContext methodsFor: 'recovered'!
scoopixSettings
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004e264; bytecode file offset 0x94d048"
!SGCgAbstractGenerationContext methodsFor: 'recovered'!
autosarSettings
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004e354; bytecode file offset 0x94d048"
!SGCgAbstractGenerationContext methodsFor: 'recovered'!
errorHandler
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004e4bc; bytecode file offset 0x94d048"
!SGCgAbstractGenerationContext methodsFor: 'recovered'!
platform
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004eac8; bytecode file offset 0x94d048"
!SGCgAbstractGenerationContext methodsFor: 'recovered'!
ehooksSettings
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004ee10; bytecode file offset 0x94d048"
!SGCgAbstractGenerationContext methodsFor: 'recovered'!
cCodeSettings
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004fa88; bytecode file offset 0x94d048"
!SGCgAbstractGenerationContext methodsFor: 'recovered'!
serviceSettings
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004fdd0; bytecode file offset 0x94d048"
!SGCgAbstractGenerationContext methodsFor: 'recovered'!
generationSettings
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004ff5c; bytecode file offset 0x94d048"
!SGCgAbstractGenerationContext methodsFor: 'recovered'!
engineeringSettings
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005249c; bytecode file offset 0x94f0e0"
!SGCgAbstractGenerationContext methodsFor: 'recovered'!
codeOptimizationOptions
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) generationSettings.
    recoveredValue1 := (recoveredValue0) codeGenerationOptions.
    recoveredValue2 := (recoveredValue1) codeOptimizationSettingsCreateIfAbsent.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005cb2c; bytecode file offset 0x959680"
!SGCgAbstractGenerationContext methodsFor: 'recovered'!
codeGeneratorStrategy
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGGeneratorFactory.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (recoveredValue1) codeGeneratorStrategy.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201a0bcc; bytecode file offset 0xa9d4a8"
!SGCgAbstractGenerationContext methodsFor: 'recovered'!
ileMethodDecl
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [
    'Apparently wrong context used - should be SGIlMethodContext'
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

