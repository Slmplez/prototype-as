"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001de8; bytecode file offset 0x8ffcfc"
!SGLmTriggerMethod methodsFor: 'recovered'!
analyze
    ^self
! !

"ASDBase.ic method 0x2006fa28; bytecode file offset 0x96c42c"
!SGLmTriggerMethod methodsFor: 'recovered'!
generator
    | recoveredValue0 |
    recoveredValue0 := generator.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200b41c8; bytecode file offset 0x9b0ab0"
!SGLmTriggerMethod methodsFor: 'recovered'!
buildMdlBody
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) generator.
    recoveredValue1 := (self) hierarchyBlock.
    (recoveredValue0) generateCode: (recoveredValue1) trigger: (self).
    ^self
! !

"ASDBase.ic method 0x200c5fc4; bytecode file offset 0x9c29e8"
!SGLmTriggerMethod methodsFor: 'recovered'!
generator: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    generator := recoveredValue0.
    ^self
! !

