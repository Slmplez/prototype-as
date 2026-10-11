"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001f7a8; bytecode file offset 0x92209c"
!SGCgARStandardReturnType methodsFor: 'recovered'!
label
    ^'Std_ReturnType'
! !

"ASDBase.ic method 0x20062884; bytecode file offset 0x95f8b0"
!SGCgARStandardReturnType methodsFor: 'recovered'!
isIleAUTOSARReturnType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) className.
    recoveredValue1 := (self) autosarStandardReturnTypeLabel.
    recoveredValue2 := (recoveredValue0) equals: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200754dc; bytecode file offset 0x9757c8"
!SGCgARStandardReturnType methodsFor: 'recovered'!
isCgARStandardReturnType
    ^true
! !

"ASDBase.ic method 0x200763b4; bytecode file offset 0x9757c8"
!SGCgARStandardReturnType methodsFor: 'recovered'!
isCgARReturnType
    ^true
! !

"ASDBase.ic method 0x20077104; bytecode file offset 0x9757c8"
!SGCgARStandardReturnType methodsFor: 'recovered'!
definesForEnums
    ^true
! !

"ASDBase.ic method 0x2007a82c; bytecode file offset 0x97c330"
!SGCgARStandardReturnType methodsFor: 'recovered'!
expandEnumDefines
    ^false
! !

"ASDBase.ic method 0x2007ac8c; bytecode file offset 0x97c330"
!SGCgARStandardReturnType methodsFor: 'recovered'!
originalImplementationIsNil
    ^false
! !

"ASDBase.ic method 0x2008c028; bytecode file offset 0x988b68"
!SGCgARStandardReturnType methodsFor: 'recovered'!
createErrLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) autosarStandardReturnTypeLabel.
    recoveredValue1 := ('AUTOSAR ') , (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200fc250; bytecode file offset 0x9f8b0c"
!SGCgARStandardReturnType methodsFor: 'recovered'!
isCgTypeIdentical: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCgARStandardReturnType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgApplicationErrorType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20100db8; bytecode file offset 0x9fd6b4"
!SGCgARStandardReturnType methodsFor: 'recovered'!
isCgTypeCompatibleNoImpl: recoveredArg1 generator: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isCgAnsiCType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgTypeIdentical: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

