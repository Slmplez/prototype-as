"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000a868; bytecode file offset 0x908be4"
!SgmlSyntaxContent methodsFor: 'recovered'!
isRequired
    | recoveredValue0 |
    recoveredValue0 := (self) required.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000af58; bytecode file offset 0x908be4"
!SgmlSyntaxContent methodsFor: 'recovered'!
isRepeatable
    | recoveredValue0 |
    recoveredValue0 := (self) repeatable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20027b20; bytecode file offset 0x92454c"
!SgmlSyntaxContent methodsFor: 'recovered'!
isOptional
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) isRequired.
    recoveredValue1 := (recoveredValue0) not.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200675f4; bytecode file offset 0x9646f8"
!SgmlSyntaxContent methodsFor: 'recovered'!
required
    | recoveredValue0 |
    recoveredValue0 := required.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200691e4; bytecode file offset 0x965b90"
!SgmlSyntaxContent methodsFor: 'recovered'!
repeatable
    | recoveredValue0 |
    recoveredValue0 := repeatable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bf798; bytecode file offset 0x9bc0b4"
!SgmlSyntaxContent methodsFor: 'recovered'!
required: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    required := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfc84; bytecode file offset 0x9bd228"
!SgmlSyntaxContent methodsFor: 'recovered'!
repeatable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    repeatable := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2012f95c; bytecode file offset 0xa2c220"
!SgmlSyntaxContent methodsFor: 'recovered'!
initialize
    super initialize.
    (self) required: (true).
    (self) repeatable: (false).
    ^self
! !

"ASDBase.ic method 0x20300fb8; bytecode file offset 0xbfd898"
!SgmlSyntaxContent methodsFor: 'recovered'!
canAdd: recoveredArg1 to: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ReadWriteStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) nextPut: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) reset.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSyntax: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRepeatable.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) atEnd.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSyntax: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) atEnd.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

