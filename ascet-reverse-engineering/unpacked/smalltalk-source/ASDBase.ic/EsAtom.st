"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200007d0; bytecode file offset 0x8ffcfc"
!EsAtom methodsFor: 'recovered'!
asSGIaScale
    ^self
! !

"ASDBase.ic method 0x20002908; bytecode file offset 0x8ffcfc"
!EsAtom methodsFor: 'recovered'!
asAtom
    ^self
! !

"ASDBase.ic method 0x20003d08; bytecode file offset 0x90206c"
!EsAtom methodsFor: 'recovered'!
abtCloneWithRecursionSet: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004130; bytecode file offset 0x90206c"
!EsAtom methodsFor: 'recovered'!
asExactScaleWith: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200427a0; bytecode file offset 0x93f058"
!EsAtom methodsFor: 'recovered'!
isError
    | recoveredValue0 |
    recoveredValue0 := (self) == ('error').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20063148; bytecode file offset 0x95fa00"
!EsAtom methodsFor: 'recovered'!
isEmpty
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) size.
    recoveredValue1 := (recoveredValue0) == (0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20073fb0; bytecode file offset 0x970b34"
!EsAtom methodsFor: 'recovered'!
implInterval
    ^nil
! !

"ASDBase.ic method 0x20075b44; bytecode file offset 0x9757c8"
!EsAtom methodsFor: 'recovered'!
isAtom
    ^true
! !

"ASDBase.ic method 0x2007d19c; bytecode file offset 0x97c330"
!EsAtom methodsFor: 'recovered'!
isExact
    ^false
! !

"ASDBase.ic method 0x20084eb8; bytecode file offset 0x981ca4"
!EsAtom methodsFor: 'recovered'!
emWriteObjectOrLiteralOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) emWriteLiteralOn: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x201281ec; bytecode file offset 0xa24ab0"
!EsAtom methodsFor: 'recovered'!
asString
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := String.
    recoveredValue1 := (self) basicSize.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredValue3 := (self) basicSize.
    recoveredValue4 := (recoveredValue2) replaceFrom: (1) to: (recoveredValue3) with: (self).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2012c1d8; bytecode file offset 0xa28a94"
!EsAtom methodsFor: 'recovered'!
isAnyScale
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := 'any'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2 == recoveredStack3) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'float'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

