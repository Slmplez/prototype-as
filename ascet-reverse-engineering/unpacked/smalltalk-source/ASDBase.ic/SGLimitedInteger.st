"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20008840; bytecode file offset 0x908be4"
!SGLimitedInteger methodsFor: 'recovered'!
implementationType
    | recoveredValue0 |
    recoveredValue0 := (self) defaultImplType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009c2c; bytecode file offset 0x908be4"
!SGLimitedInteger methodsFor: 'recovered'!
getDefaultImplementationType
    | recoveredValue0 |
    recoveredValue0 := (self) defaultImplType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b924; bytecode file offset 0x908be4"
!SGLimitedInteger methodsFor: 'recovered'!
implTypeForDataElement
    | recoveredValue0 |
    recoveredValue0 := (self) defaultImplType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20013e0c; bytecode file offset 0x912098"
!SGLimitedInteger methodsFor: 'recovered'!
classForPhysType
    | recoveredValue0 |
    recoveredValue0 := RBLimitedInteger.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20019694; bytecode file offset 0x92209c"
!SGLimitedInteger methodsFor: 'recovered'!
iconName
    ^'ElementTypeVariableLimitedInteger'
! !

"ASDBase.ic method 0x20020258; bytecode file offset 0x92209c"
!SGLimitedInteger methodsFor: 'recovered'!
label
    ^'limitInt'
! !

"ASDBase.ic method 0x20035544; bytecode file offset 0x934580"
!SGLimitedInteger methodsFor: 'recovered'!
defaultImplType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) defaultPhysType.
    recoveredValue1 := (recoveredValue0) actualType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d368; bytecode file offset 0x93bf94"
!SGLimitedInteger methodsFor: 'recovered'!
modelTypeForView
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ASDDisplayStrings.
    recoveredValue1 := (recoveredValue0) limitedIntegerString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20075a1c; bytecode file offset 0x9757c8"
!SGLimitedInteger methodsFor: 'recovered'!
isSGLimitedInteger
    ^true
! !

"ASDBase.ic method 0x200d8de8; bytecode file offset 0x9d56e4"
!SGLimitedInteger methodsFor: 'recovered'!
generateScoopIX: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) generateScoopIX: (recoveredValue0) signed: (true) kind: ('asd:limit').
    ^self
! !

"ASDBase.ic method 0x20166748; bytecode file offset 0xa63024"
!SGLimitedInteger methodsFor: 'recovered'!
checkForCompatibleData: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := super checkForCompatibleData: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := -2147483648.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 2147483647.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) between: (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

