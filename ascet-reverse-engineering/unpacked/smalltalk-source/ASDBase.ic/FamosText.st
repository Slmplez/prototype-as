"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006e868; bytecode file offset 0x96b41c"
!FamosText methodsFor: 'recovered'!
textLength
    | recoveredValue0 |
    recoveredValue0 := textLength.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006efdc; bytecode file offset 0x96b8a0"
!FamosText methodsFor: 'recovered'!
text
    | recoveredValue0 |
    recoveredValue0 := text.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007731c; bytecode file offset 0x9757c8"
!FamosText methodsFor: 'recovered'!
isFamosText
    ^true
! !

"ASDBase.ic method 0x200baa40; bytecode file offset 0x9b72f8"
!FamosText methodsFor: 'recovered'!
setText: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    text := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) size.
    textLength := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200c5070; bytecode file offset 0x9c1afc"
!FamosText methodsFor: 'recovered'!
textLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    textLength := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5398; bytecode file offset 0x9c1f64"
!FamosText methodsFor: 'recovered'!
text: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    text := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d93dc; bytecode file offset 0x9d5d08"
!FamosText methodsFor: 'recovered'!
addToSuper: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) parent: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) addText: (self).
    ^true
! !

"ASDBase.ic method 0x200fb0b8; bytecode file offset 0x9f7994"
!FamosText methodsFor: 'recovered'!
putTextLengthIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := textLength.
    (self) putIn: (recoveredValue1) integer: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2012fe44; bytecode file offset 0xa2c704"
!FamosText methodsFor: 'recovered'!
initialize
    super initialize.
    textLength := 0.
    text := ''.
    ^self
! !

"ASDBase.ic method 0x20202674; bytecode file offset 0xafef44"
!FamosText methodsFor: 'recovered'!
putFieldsIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    super putFieldsIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putTextLengthIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putTextIn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) putCommentLengthIn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) putCommentIn: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (self) putEndIn: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20233740; bytecode file offset 0xb30004"
!FamosText methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    super getFrom: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getFieldLength: (recoveredValue1).
    textLength := recoveredValue2.
    recoveredValue3 := textLength.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) getString: (recoveredValue3) from: (recoveredValue4).
    text := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (self) getFieldLength: (recoveredValue6).
    commentLength := recoveredValue7.
    recoveredValue8 := commentLength.
    recoveredValue9 := recoveredArg1.
    (self) getString: (recoveredValue8) from: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x2027a824; bytecode file offset 0xb770ec"
!FamosText methodsFor: 'recovered'!
putTextIn: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := text.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDBString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := EsLeadEncodedBytes.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := text.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromString: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack2) putSeparatorIn: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) putIn: (recoveredStack2) ident: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) putSeparatorIn: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := text.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) putIn: (recoveredStack2) ident: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

