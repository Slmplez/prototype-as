"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20048f14; bytecode file offset 0x9457e0"
!SGAliasMethod methodsFor: 'recovered'!
initializeAliasName
    aliasName := nil.
    ^self
! !

"ASDBase.ic method 0x20050e70; bytecode file offset 0x94d84c"
!SGAliasMethod methodsFor: 'recovered'!
enabled
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) methodParameters.
    recoveredValue1 := (recoveredValue0) isEmpty.
    recoveredValue2 := (recoveredValue1) not.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006b0fc; bytecode file offset 0x967a18"
!SGAliasMethod methodsFor: 'recovered'!
aliasName
    | recoveredValue0 |
    recoveredValue0 := methodName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a432c; bytecode file offset 0x9a0bf8"
!SGAliasMethod methodsFor: 'recovered'!
convertTo: recoveredArg1
    (self) runtimeAssert: (false) additionalInfo: ('Conversion of Alias Methods is not supported!!').
    ^self
! !

