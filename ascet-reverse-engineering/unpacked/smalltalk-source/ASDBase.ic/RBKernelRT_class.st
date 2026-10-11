"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000360; bytecode file offset 0x8ffcfc"
!RBKernelRT class methodsFor: 'recovered'!
_PRAGMA_RBNationalLanguageSupportRTNlsPool
    ^self
! !

"ASDBase.ic method 0x20000928; bytecode file offset 0x8ffcfc"
!RBKernelRT class methodsFor: 'recovered'!
_PRAGMA_RBKernelExceptions
    ^self
! !

"ASDBase.ic method 0x200019c8; bytecode file offset 0x8ffcfc"
!RBKernelRT class methodsFor: 'recovered'!
_PRAGMA_RBNationalLanguageSupportToolRTNlsPool
    ^self
! !

"ASDBase.ic method 0x20002890; bytecode file offset 0x8ffcfc"
!RBKernelRT class methodsFor: 'recovered'!
_PRAGMA_EtasNumericGlobals
    ^self
! !

"ASDBase.ic method 0x20003070; bytecode file offset 0x8ffcfc"
!RBKernelRT class methodsFor: 'recovered'!
_PRAGMA_EtasKernelGlobals
    ^self
! !

"ASDBase.ic method 0x2001a7f8; bytecode file offset 0x92209c"
!RBKernelRT class methodsFor: 'recovered'!
classMethodCategories
    ^#('Developer' 'Create' 'Debug' 'Deprecated' 'Internal' 'Obsolete' 'Protected' 'Testing' 'Unit Test')
! !

"ASDBase.ic method 0x200232d0; bytecode file offset 0x92209c"
!RBKernelRT class methodsFor: 'recovered'!
instanceMethodCategories
    ^#('Developer' 'Callback' 'Debug' 'Deprecated' 'Event' 'Internal' 'Initialize' 'Menu' 'Observer' 'Obsolete' 'Protected' 'Testing' 'Toolbar' 'Update' 'Unit Test' 'Widget Access')
! !

"ASDBase.ic method 0x2005c0a4; bytecode file offset 0x958ab0"
!RBKernelRT class methodsFor: 'recovered'!
removing
    | recoveredValue0 |
    recoveredValue0 := RBCharacterModel.
    (recoveredValue0) removeInstance.
    ^self
! !

"ASDBase.ic method 0x20127f10; bytecode file offset 0xa247ec"
!RBKernelRT class methodsFor: 'recovered'!
saving
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDAbstractSingleton.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c91ecArg1 | 
    | block280c91ecValue0 block280c91ecValue1 |
    block280c91ecValue0 := block280c91ecArg1.
    block280c91ecValue1 := (block280c91ecValue0) removeInstance.
    block280c91ecValue1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) withAllSubclassesDo: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20128c98; bytecode file offset 0xa25564"
!RBKernelRT class methodsFor: 'recovered'!
calculateFloatMaxIntegers
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Float.
    recoveredValue1 := (recoveredValue0) fmax.
    recoveredValue2 := (recoveredValue1) asInteger.
    FloatMaxAsInteger := recoveredValue2.
    recoveredValue3 := Float.
    recoveredValue4 := (recoveredValue3) fmaxNeg.
    recoveredValue5 := (recoveredValue4) asInteger.
    FloatMaxNegAsInteger := recoveredValue5.
    ^self
! !

"ASDBase.ic method 0x201fcf94; bytecode file offset 0xaf9874"
!RBKernelRT class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := RBCharacterModel.
    (recoveredValue0) createInstance.
    recoveredValue1 := Character.
    (recoveredValue1) initializeLowerCase.
    (self) calculateFloatMaxIntegers.
    recoveredValue2 := ExError.
    recoveredValue3 := (recoveredValue2) newChild.
    recoveredValue4 := recoveredValue3.
    ExRBKernelDeepCompareError := recoveredValue4.
    recoveredValue5 := recoveredValue3.
    (recoveredValue5) description: ('Comparison failed').
    (recoveredValue3) resumable: (false).
    ^self
! !

