"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015968; bytecode file offset 0x92209c"
!SGSignedInteger methodsFor: 'recovered'!
modelTypeForView
    ^'Signed Integer'
! !

"ASDBase.ic method 0x20016ebc; bytecode file offset 0x92209c"
!SGSignedInteger methodsFor: 'recovered'!
iconName
    ^'ElementTypeVariableSignedDiscrete'
! !

"ASDBase.ic method 0x20022088; bytecode file offset 0x92209c"
!SGSignedInteger methodsFor: 'recovered'!
ctLabel
    ^'sint'
! !

"ASDBase.ic method 0x20025e04; bytecode file offset 0x923928"
!SGSignedInteger methodsFor: 'recovered'!
fieldTypeLabel
    ^'sint'
! !

"ASDBase.ic method 0x20026374; bytecode file offset 0x923928"
!SGSignedInteger methodsFor: 'recovered'!
label
    ^'sdisc'
! !

"ASDBase.ic method 0x2003d978; bytecode file offset 0x93bf94"
!SGSignedInteger methodsFor: 'recovered'!
defaultPhysType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInt32Signed.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e188; bytecode file offset 0x93bf94"
!SGSignedInteger methodsFor: 'recovered'!
defaultImplType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInt32Signed.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2007614c; bytecode file offset 0x9757c8"
!SGSignedInteger methodsFor: 'recovered'!
isOldIntegerType
    ^true
! !

"ASDBase.ic method 0x2007699c; bytecode file offset 0x9757c8"
!SGSignedInteger methodsFor: 'recovered'!
isSGSignedInteger
    ^true
! !

"ASDBase.ic method 0x200d8df8; bytecode file offset 0x9d56e4"
!SGSignedInteger methodsFor: 'recovered'!
generateScoopIX: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) generateScoopIX: (recoveredValue0) signed: (true) kind: ('asd:classic').
    ^self
! !

"ASDBase.ic method 0x200e9d2c; bytecode file offset 0x9e65f4"
!SGSignedInteger methodsFor: 'recovered'!
convertAdequateData: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asInteger.
    recoveredValue2 := (recoveredValue1) max: (-2147483648).
    recoveredValue3 := (recoveredValue2) min: (2147483647).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200f1988; bytecode file offset 0x9ee39c"
!SGSignedInteger methodsFor: 'recovered'!
getDefaultImplementationType
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280c3f18Arg1 | 
    | block280c3f18Value0 block280c3f18Value1 |
    block280c3f18Value0 := block280c3f18Arg1.
    block280c3f18Value1 := (block280c3f18Value0) optionDefaultsImplementationTypeSdisc.
    block280c3f18Value1
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDefaultImplTypeBlock: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20166760; bytecode file offset 0xa63024"
!SGSignedInteger methodsFor: 'recovered'!
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

"ASDBase.ic method 0x201974b8; bytecode file offset 0xa93d7c"
!SGSignedInteger methodsFor: 'recovered'!
conformsWithCast: recoveredArg1 onWarningDo: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isSGReal.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) isSGUnsignedInteger.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGEnumeration.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

