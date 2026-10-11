"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20007310; bytecode file offset 0x908be4"
!SGWrapAroundInteger methodsFor: 'recovered'!
implTypeForDataElement
    | recoveredValue0 |
    recoveredValue0 := (self) implementationType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009fbc; bytecode file offset 0x908be4"
!SGWrapAroundInteger methodsFor: 'recovered'!
getDefaultImplementationType
    | recoveredValue0 |
    recoveredValue0 := (self) defaultImplType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001506c; bytecode file offset 0x912098"
!SGWrapAroundInteger methodsFor: 'recovered'!
classForPhysType
    | recoveredValue0 |
    recoveredValue0 := RBWrapAroundInteger.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20017cf0; bytecode file offset 0x92209c"
!SGWrapAroundInteger methodsFor: 'recovered'!
iconName
    ^'ElementTypeVariableWrapAroundInteger'
! !

"ASDBase.ic method 0x20024050; bytecode file offset 0x92209c"
!SGWrapAroundInteger methodsFor: 'recovered'!
label
    ^'wrapInt'
! !

"ASDBase.ic method 0x2002e544; bytecode file offset 0x934580"
!SGWrapAroundInteger methodsFor: 'recovered'!
defaultImplType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) defaultPhysType.
    recoveredValue1 := (recoveredValue0) actualType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d3b8; bytecode file offset 0x93bf94"
!SGWrapAroundInteger methodsFor: 'recovered'!
modelTypeForView
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ASDDisplayStrings.
    recoveredValue1 := (recoveredValue0) wrapAroundIntegerString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20069dc8; bytecode file offset 0x966bdc"
!SGWrapAroundInteger methodsFor: 'recovered'!
implementationType
    | recoveredValue0 |
    recoveredValue0 := implementationType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20078744; bytecode file offset 0x9757c8"
!SGWrapAroundInteger methodsFor: 'recovered'!
isSGWrapAroundInteger
    ^true
! !

"ASDBase.ic method 0x20083008; bytecode file offset 0x97f8cc"
!SGWrapAroundInteger methodsFor: 'recovered'!
implementationType: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    implementationType := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008d1d4; bytecode file offset 0x989db0"
!SGWrapAroundInteger methodsFor: 'recovered'!
initImplementationType
    | recoveredValue0 |
    recoveredValue0 := (self) defaultImplType.
    (self) implementationType: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d66e4; bytecode file offset 0x9d3134"
!SGWrapAroundInteger methodsFor: 'recovered'!
initialize
    super initialize.
    (self) initImplementationType.
    ^self
! !

"ASDBase.ic method 0x200d8e28; bytecode file offset 0x9d56e4"
!SGWrapAroundInteger methodsFor: 'recovered'!
generateScoopIX: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) generateScoopIX: (recoveredValue0) signed: (true) kind: ('asd:wrapAround').
    ^self
! !

"ASDBase.ic method 0x20166790; bytecode file offset 0xa63064"
!SGWrapAroundInteger methodsFor: 'recovered'!
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
            recoveredStack1 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 4294967295.
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

