"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200387c0; bytecode file offset 0x935c54"
!SGDmReturnObject methodsFor: 'recovered'!
physTypeForDataElement: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getPhysType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20066254; bytecode file offset 0x963428"
!SGDmReturnObject methodsFor: 'recovered'!
dataElements
    | recoveredValue0 |
    recoveredValue0 := dataElements.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067d34; bytecode file offset 0x9646f8"
!SGDmReturnObject methodsFor: 'recovered'!
ignoredParameterVariables
    | recoveredValue0 |
    recoveredValue0 := ignoredParameterVariables.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bda6c; bytecode file offset 0x9bb178"
!SGDmReturnObject methodsFor: 'recovered'!
dataElements: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dataElements := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bef38; bytecode file offset 0x9bc0b4"
!SGDmReturnObject methodsFor: 'recovered'!
ignoredParameterVariables: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ignoredParameterVariables := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f0088; bytecode file offset 0x9ec954"
!SGDmReturnObject methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    dataElements := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    ignoredParameterVariables := recoveredValue3.
    ^self
! !

