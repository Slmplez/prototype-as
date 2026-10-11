"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200039b8; bytecode file offset 0x90206c"
!Association methodsFor: 'recovered'!
parentCopy: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200409f4; bytecode file offset 0x93d2a8"
!Association methodsFor: 'recovered'!
hasAMLValue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := value.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20083a44; bytecode file offset 0x9804b8"
!Association methodsFor: 'recovered'!
removeFromProject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) removeSystemConstant: (self).
    ^self
! !

"ASDBase.ic method 0x20084ea0; bytecode file offset 0x981ca4"
!Association methodsFor: 'recovered'!
emWriteObjectOrLiteralOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) emWriteObjectOn: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20095c6c; bytecode file offset 0x992608"
!Association methodsFor: 'recovered'!
addTo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) parts.
    (recoveredValue1) add: (self).
    ^self
! !

"ASDBase.ic method 0x200cdcfc; bytecode file offset 0x9ca5b4"
!Association methodsFor: 'recovered'!
clearId
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := key.
    (recoveredValue0) clearId.
    recoveredValue1 := value.
    (recoveredValue1) clearId.
    ^self
! !

"ASDBase.ic method 0x20111024; bytecode file offset 0xa0d8e0"
!Association methodsFor: 'recovered'!
getPartsNamed: recoveredArg1 in: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) key.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011e70c; bytecode file offset 0xa1afcc"
!Association methodsFor: 'recovered'!
addText: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (WinProfile new) instVarAt: 1 put: ((Dictionary new) instVarAt: 1 put: (0); instVarAt: 2 put: (#(nil nil nil nil nil nil nil nil nil nil nil)); yourself); instVarAt: 2 put: ((OrderedCollection new) yourself); yourself.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := value.
    recoveredValue3 := key.
    (recoveredValue0) writeEntry: (recoveredValue1) value: ('') in: (recoveredValue2) to: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201599d0; bytecode file offset 0xa5629c"
!Association methodsFor: 'recovered'!
copyTree
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (self) key.
    (recoveredValue3) key: (recoveredValue4).
    recoveredValue5 := (self) value.
    (recoveredValue2) value: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

