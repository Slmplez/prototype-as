"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200705a8; bytecode file offset 0x96d06c"
!SGGenericCode methodsFor: 'recovered'!
dbCodeSource
    | recoveredValue0 |
    recoveredValue0 := dbaCode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007084c; bytecode file offset 0x96d218"
!SGGenericCode methodsFor: 'recovered'!
dbDataSource
    | recoveredValue0 |
    recoveredValue0 := dbaData.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200779bc; bytecode file offset 0x9757c8"
!SGGenericCode methodsFor: 'recovered'!
hasGenericCode
    ^true
! !

"ASDBase.ic method 0x200c6db0; bytecode file offset 0x9c36ec"
!SGGenericCode methodsFor: 'recovered'!
dbCodeSource: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dbaCode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6f84; bytecode file offset 0x9c38d8"
!SGGenericCode methodsFor: 'recovered'!
dbDataSource: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dbaData := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c70d8; bytecode file offset 0x9c3a8c"
!SGGenericCode methodsFor: 'recovered'!
codeOfMake: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    makeCode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7274; bytecode file offset 0x9c3c10"
!SGGenericCode methodsFor: 'recovered'!
bemSourceH: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    bemCodeH := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7388; bytecode file offset 0x9c3d64"
!SGGenericCode methodsFor: 'recovered'!
bemSourceC: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    bemCodeC := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c74cc; bytecode file offset 0x9c3e48"
!SGGenericCode methodsFor: 'recovered'!
bemSourceInline: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    bemSourceInline := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d5dc0; bytecode file offset 0x9d267c"
!SGGenericCode methodsFor: 'recovered'!
resetInitGenericCode
    super resetInitGenericCode.
    dbaData := nil.
    ^self
! !

"ASDBase.ic method 0x200e5ff4; bytecode file offset 0x9e28b4"
!SGGenericCode methodsFor: 'recovered'!
initialize
    super initialize.
    dbaCode := ''.
    ^self
! !

"ASDBase.ic method 0x20106b78; bytecode file offset 0xa03430"
!SGGenericCode methodsFor: 'recovered'!
codeOfMake
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := makeCode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := makeCode.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20116c44; bytecode file offset 0xa134fc"
!SGGenericCode methodsFor: 'recovered'!
bemSourceH
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := bemCodeH.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            bemCodeH := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := bemCodeH.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20116ca8; bytecode file offset 0xa1356c"
!SGGenericCode methodsFor: 'recovered'!
bemSourceC
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := bemCodeC.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            bemCodeC := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := bemCodeC.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20116d60; bytecode file offset 0xa13624"
!SGGenericCode methodsFor: 'recovered'!
bemSourceInline
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := bemSourceInline.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            bemSourceInline := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := bemSourceInline.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20172cac; bytecode file offset 0xa6f568"
!SGGenericCode methodsFor: 'recovered'!
resetOSGenericCode
    super resetOSGenericCode.
    dbaCode := nil.
    makeCode := nil.
    bemCodeH := nil.
    bemCodeC := nil.
    ^self
! !

"ASDBase.ic method 0x201a31f8; bytecode file offset 0xa9fab4"
!SGGenericCode methodsFor: 'recovered'!
resetGenericModuleCode
    super resetGenericModuleCode.
    dbaCode := nil.
    makeCode := nil.
    bemCodeH := nil.
    bemCodeC := nil.
    bemSourceInline := nil.
    ^self
! !

