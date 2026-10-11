"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200037e0; bytecode file offset 0x90206c"
!ASAP2FlashParameterKWP2000V30 methodsFor: 'recovered'!
comments: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005030; bytecode file offset 0x90206c"
!ASAP2FlashParameterKWP2000V30 methodsFor: 'recovered'!
name: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005360; bytecode file offset 0x90206c"
!ASAP2FlashParameterKWP2000V30 methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200054b8; bytecode file offset 0x90206c"
!ASAP2FlashParameterKWP2000V30 methodsFor: 'recovered'!
longName: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2004b0dc; bytecode file offset 0x947a60"
!ASAP2FlashParameterKWP2000V30 methodsFor: 'recovered'!
noFlashBack
    | recoveredValue0 |
    recoveredValue0 := (self) at: (1).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b354; bytecode file offset 0x947d20"
!ASAP2FlashParameterKWP2000V30 methodsFor: 'recovered'!
autoFlashBack
    | recoveredValue0 |
    recoveredValue0 := (self) at: (2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b4d0; bytecode file offset 0x947ec0"
!ASAP2FlashParameterKWP2000V30 methodsFor: 'recovered'!
toolFlashBack
    | recoveredValue0 |
    recoveredValue0 := (self) at: (3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073800; bytecode file offset 0x970b34"
!ASAP2FlashParameterKWP2000V30 methodsFor: 'recovered'!
longName
    ^nil
! !

"ASDBase.ic method 0x20073bb0; bytecode file offset 0x970b34"
!ASAP2FlashParameterKWP2000V30 methodsFor: 'recovered'!
name
    ^nil
! !

"ASDBase.ic method 0x20073ff0; bytecode file offset 0x970b34"
!ASAP2FlashParameterKWP2000V30 methodsFor: 'recovered'!
comments
    ^nil
! !

"ASDBase.ic method 0x20082ce4; bytecode file offset 0x97f5f0"
!ASAP2FlashParameterKWP2000V30 methodsFor: 'recovered'!
getAutoFlashBack: recoveredArg1
    (self) autoFlashBack: (true).
    ^self
! !

"ASDBase.ic method 0x20082d38; bytecode file offset 0x97f5f0"
!ASAP2FlashParameterKWP2000V30 methodsFor: 'recovered'!
getNoFlashBack: recoveredArg1
    (self) noFlashBack: (true).
    ^self
! !

"ASDBase.ic method 0x20085260; bytecode file offset 0x981ca4"
!ASAP2FlashParameterKWP2000V30 methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) parse: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a5efc; bytecode file offset 0x9a27f0"
!ASAP2FlashParameterKWP2000V30 methodsFor: 'recovered'!
noFlashBack: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (1) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a5f84; bytecode file offset 0x9a2a28"
!ASAP2FlashParameterKWP2000V30 methodsFor: 'recovered'!
autoFlashBack: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (2) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a623c; bytecode file offset 0x9a2b84"
!ASAP2FlashParameterKWP2000V30 methodsFor: 'recovered'!
toolFlashBack: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (3) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2010126c; bytecode file offset 0x9fdf08"
!ASAP2FlashParameterKWP2000V30 methodsFor: 'recovered'!
putIn: recoveredArg1 toolFlashBack: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) toolFlashBack.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) toolFlashBack.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20125df0; bytecode file offset 0xa2272c"
!ASAP2FlashParameterKWP2000V30 methodsFor: 'recovered'!
getToolFlashBack: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASAP2KWP2000V30ToolFlashBack.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (self) toolFlashBack: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) getFrom: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2012fae0; bytecode file offset 0xa2c3a4"
!ASAP2FlashParameterKWP2000V30 methodsFor: 'recovered'!
initialize
    super initialize.
    (self) noFlashBack: (false).
    (self) autoFlashBack: (false).
    ^self
! !

"ASDBase.ic method 0x201691e0; bytecode file offset 0xa65ac8"
!ASAP2FlashParameterKWP2000V30 methodsFor: 'recovered'!
putIn: recoveredArg1 autoFlashBack: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) autoFlashBack.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) putNewLineIn: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20169208; bytecode file offset 0xa65ac8"
!ASAP2FlashParameterKWP2000V30 methodsFor: 'recovered'!
putIn: recoveredArg1 noFlashBack: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) noFlashBack.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) putNewLineIn: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

