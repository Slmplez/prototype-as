"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000aeec; bytecode file offset 0x908be4"
!SGCgComplexInitValue methodsFor: 'recovered'!
errLabel
    | recoveredValue0 |
    recoveredValue0 := (self) initName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006630c; bytecode file offset 0x963428"
!SGCgComplexInitValue methodsFor: 'recovered'!
initId
    | recoveredValue0 |
    recoveredValue0 := initId.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006724c; bytecode file offset 0x9646f8"
!SGCgComplexInitValue methodsFor: 'recovered'!
initName
    | recoveredValue0 |
    recoveredValue0 := initName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068744; bytecode file offset 0x965b90"
!SGCgComplexInitValue methodsFor: 'recovered'!
asIleName
    | recoveredValue0 |
    recoveredValue0 := ileName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20076dd4; bytecode file offset 0x9757c8"
!SGCgComplexInitValue methodsFor: 'recovered'!
isCgComplexInitValue
    ^true
! !

"ASDBase.ic method 0x2007e4ec; bytecode file offset 0x97c330"
!SGCgComplexInitValue methodsFor: 'recovered'!
isMdlUninitializedReference
    ^false
! !

"ASDBase.ic method 0x20095da4; bytecode file offset 0x992670"
!SGCgComplexInitValue methodsFor: 'recovered'!
isIdenticalTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) initName.
    recoveredValue2 := (self) initName.
    recoveredValue3 := (recoveredValue1) equals: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200be3b4; bytecode file offset 0x9bb178"
!SGCgComplexInitValue methodsFor: 'recovered'!
initId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    initId := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bee08; bytecode file offset 0x9bc0b4"
!SGCgComplexInitValue methodsFor: 'recovered'!
initName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    initName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf94c; bytecode file offset 0x9bd228"
!SGCgComplexInitValue methodsFor: 'recovered'!
ileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ileName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d222c; bytecode file offset 0x9ceaf0"
!SGCgComplexInitValue methodsFor: 'recovered'!
asCValue
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) initName.
    recoveredValue1 := ('DataSet <') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , ('>').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200fc1f0; bytecode file offset 0x9f8aac"
!SGCgComplexInitValue methodsFor: 'recovered'!
equals: recoveredArg1
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
            recoveredStack2 := (recoveredStack2) isCgComplexInitValue.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIdenticalTo: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012f7ac; bytecode file offset 0xa2c06c"
!SGCgComplexInitValue methodsFor: 'recovered'!
initialize
    super initialize.
    initName := ''.
    initId := ''.
    ^self
! !

"ASDBase.ic method 0x2024bd7c; bytecode file offset 0xb4864c"
!SGCgComplexInitValue methodsFor: 'recovered'!
genIleImplInitValue: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) useGlobalId.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleName.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) initId.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIdentifier.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyWith: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ileName := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleName.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) initName.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIdentifier.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyWith: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ileName := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

