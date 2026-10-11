"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20066744; bytecode file offset 0x963428"
!SGPrjContext methodsFor: 'recovered'!
platform
    | recoveredValue0 |
    recoveredValue0 := platform.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067924; bytecode file offset 0x9646f8"
!SGPrjContext methodsFor: 'recovered'!
generationSettings
    | recoveredValue0 |
    recoveredValue0 := generationSettings.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bde9c; bytecode file offset 0x9bb178"
!SGPrjContext methodsFor: 'recovered'!
platform: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    platform := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bebf8; bytecode file offset 0x9bc0b4"
!SGPrjContext methodsFor: 'recovered'!
generationSettings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    generationSettings := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201906f8; bytecode file offset 0xa8cfb8"
!SGPrjContext methodsFor: 'recovered'!
removeTargetSpecificOptionsDeclaration
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) platform.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    (recoveredBlock5Value0) removeTargetSpecificOptionsDeclaration.
    platform := nil.
    nil
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

