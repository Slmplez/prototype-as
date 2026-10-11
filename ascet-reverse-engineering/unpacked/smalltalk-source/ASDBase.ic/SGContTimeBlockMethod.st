"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20004660; bytecode file offset 0x90206c"
!SGContTimeBlockMethod methodsFor: 'recovered'!
enabled: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20013f8c; bytecode file offset 0x912098"
!SGContTimeBlockMethod methodsFor: 'recovered'!
apiClass
    | recoveredValue0 |
    recoveredValue0 := EtasAPIContinuousMethod.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20029694; bytecode file offset 0x934580"
!SGContTimeBlockMethod methodsFor: 'recovered'!
hash
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) aliasName.
    recoveredValue1 := (recoveredValue0) hash.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006ed34; bytecode file offset 0x96b8a0"
!SGContTimeBlockMethod methodsFor: 'recovered'!
isVisible
    | recoveredValue0 |
    recoveredValue0 := visible.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200781d4; bytecode file offset 0x9757c8"
!SGContTimeBlockMethod methodsFor: 'recovered'!
enabled
    ^true
! !

"ASDBase.ic method 0x200c5530; bytecode file offset 0x9c1f64"
!SGContTimeBlockMethod methodsFor: 'recovered'!
visible: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    visible := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e63c0; bytecode file offset 0x9e2ce4"
!SGContTimeBlockMethod methodsFor: 'recovered'!
initialize
    super initialize.
    (self) visible: (true).
    ^self
! !

"ASDBase.ic method 0x201a750c; bytecode file offset 0xaa3dd0"
!SGContTimeBlockMethod methodsFor: 'recovered'!
= recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := super = (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) aliasName.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasName.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

