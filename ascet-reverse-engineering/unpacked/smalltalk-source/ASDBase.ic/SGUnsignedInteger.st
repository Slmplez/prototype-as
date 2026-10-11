"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20018e9c; bytecode file offset 0x92209c"
!SGUnsignedInteger methodsFor: 'recovered'!
label
    ^'udisc'
! !

"ASDBase.ic method 0x2001be6c; bytecode file offset 0x92209c"
!SGUnsignedInteger methodsFor: 'recovered'!
modelTypeForView
    ^'Unsigned Integer'
! !

"ASDBase.ic method 0x20020204; bytecode file offset 0x92209c"
!SGUnsignedInteger methodsFor: 'recovered'!
fieldTypeLabel
    ^'uint'
! !

"ASDBase.ic method 0x20021ce0; bytecode file offset 0x92209c"
!SGUnsignedInteger methodsFor: 'recovered'!
csNameSpace
    ^'System.UInt32'
! !

"ASDBase.ic method 0x200250f4; bytecode file offset 0x92209c"
!SGUnsignedInteger methodsFor: 'recovered'!
iconName
    ^'ElementTypeVariableUnsignedDiscrete'
! !

"ASDBase.ic method 0x2003d5d8; bytecode file offset 0x93bf94"
!SGUnsignedInteger methodsFor: 'recovered'!
defaultImplType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInt32Unsigned.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e068; bytecode file offset 0x93bf94"
!SGUnsignedInteger methodsFor: 'recovered'!
defaultPhysType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInt32Unsigned.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20075af4; bytecode file offset 0x9757c8"
!SGUnsignedInteger methodsFor: 'recovered'!
isSGUnsignedInteger
    ^true
! !

"ASDBase.ic method 0x20076194; bytecode file offset 0x9757c8"
!SGUnsignedInteger methodsFor: 'recovered'!
isOldIntegerType
    ^true
! !

"ASDBase.ic method 0x200d8e18; bytecode file offset 0x9d56e4"
!SGUnsignedInteger methodsFor: 'recovered'!
generateScoopIX: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) generateScoopIX: (recoveredValue0) signed: (true) kind: ('asd:classic').
    ^self
! !

"ASDBase.ic method 0x200d96fc; bytecode file offset 0x9d5fc0"
!SGUnsignedInteger methodsFor: 'recovered'!
convertAdequateData: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asInteger.
    recoveredValue2 := (recoveredValue1) max: (0).
    recoveredValue3 := (recoveredValue2) min: (4294967295).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200f19b0; bytecode file offset 0x9ee39c"
!SGUnsignedInteger methodsFor: 'recovered'!
getDefaultImplementationType
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280c3f60Arg1 | 
    | block280c3f60Value0 block280c3f60Value1 |
    block280c3f60Value0 := block280c3f60Arg1.
    block280c3f60Value1 := (block280c3f60Value0) optionDefaultsImplementationTypeUdisc.
    block280c3f60Value1
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

"ASDBase.ic method 0x201667a4; bytecode file offset 0xa63064"
!SGUnsignedInteger methodsFor: 'recovered'!
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

"ASDBase.ic method 0x20178ae4; bytecode file offset 0xa753a8"
!SGUnsignedInteger methodsFor: 'recovered'!
conformsWithCast: recoveredArg1 onWarningDo: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGSignedInteger.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGReal.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGEnumeration.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

