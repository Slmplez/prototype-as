"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003230; bytecode file offset 0x8ffcfc"
!SGSmReturnCode methodsFor: 'recovered'!
duplicate
    ^self
! !

"ASDBase.ic method 0x20003608; bytecode file offset 0x90206c"
!SGSmReturnCode methodsFor: 'recovered'!
addChildren: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200039c0; bytecode file offset 0x90206c"
!SGSmReturnCode methodsFor: 'recovered'!
collectCalledMethods: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004858; bytecode file offset 0x90206c"
!SGSmReturnCode methodsFor: 'recovered'!
calledMethods: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005340; bytecode file offset 0x90206c"
!SGSmReturnCode methodsFor: 'recovered'!
duplicateFor: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200057b8; bytecode file offset 0x90206c"
!SGSmReturnCode methodsFor: 'recovered'!
removeChildren: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000ca2c; bytecode file offset 0x909658"
!SGSmReturnCode methodsFor: 'recovered'!
replacePrivateMethod: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2000f1fc; bytecode file offset 0x90bb38"
!SGSmReturnCode methodsFor: 'recovered'!
replaceCode: recoveredArg1 with: recoveredArg2
    ^false
! !

"ASDBase.ic method 0x2001d384; bytecode file offset 0x92209c"
!SGSmReturnCode methodsFor: 'recovered'!
tag
    ^'R'
! !

"ASDBase.ic method 0x20023660; bytecode file offset 0x92209c"
!SGSmReturnCode methodsFor: 'recovered'!
children
    ^#()
! !

"ASDBase.ic method 0x20031324; bytecode file offset 0x934580"
!SGSmReturnCode methodsFor: 'recovered'!
hash
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) hash.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20066f7c; bytecode file offset 0x9646f8"
!SGSmReturnCode methodsFor: 'recovered'!
outlineStrategy
    | recoveredValue0 |
    recoveredValue0 := outlineStrategy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200767ac; bytecode file offset 0x9757c8"
!SGSmReturnCode methodsFor: 'recovered'!
isInlinedCode
    ^true
! !

"ASDBase.ic method 0x20077c54; bytecode file offset 0x9757c8"
!SGSmReturnCode methodsFor: 'recovered'!
isOutlinableCode
    ^true
! !

"ASDBase.ic method 0x20077dbc; bytecode file offset 0x9757c8"
!SGSmReturnCode methodsFor: 'recovered'!
isReturn
    ^true
! !

"ASDBase.ic method 0x20078354; bytecode file offset 0x9757c8"
!SGSmReturnCode methodsFor: 'recovered'!
checkSize
    ^true
! !

"ASDBase.ic method 0x20078e1c; bytecode file offset 0x9757c8"
!SGSmReturnCode methodsFor: 'recovered'!
hasReturn
    ^true
! !

"ASDBase.ic method 0x2008323c; bytecode file offset 0x97faf8"
!SGSmReturnCode methodsFor: 'recovered'!
= recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := SGSmReturnCode.
    recoveredValue2 := (recoveredValue0) isKindOf: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a0c68; bytecode file offset 0x99d524"
!SGSmReturnCode methodsFor: 'recovered'!
buildMdl
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := outlineStrategy.
    (recoveredValue0) buildMdl: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a1c74; bytecode file offset 0x99e5c8"
!SGSmReturnCode methodsFor: 'recovered'!
codeSize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) outlineStrategy.
    recoveredValue1 := (recoveredValue0) sizeEstimatorClass.
    recoveredValue2 := (self) outlineStrategy.
    recoveredValue3 := (recoveredValue2) isGeneratingOutlinedMethod.
    recoveredValue4 := (recoveredValue1) returnCode: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200bef48; bytecode file offset 0x9bc0b4"
!SGSmReturnCode methodsFor: 'recovered'!
outlineStrategy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    outlineStrategy := recoveredValue0.
    ^self
! !

