"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdbh.ic method 0x20000010; bytecode file offset 0x11ba8"
!EmExtendedClassInformation methodsFor: 'recovered'!
abtAsExternalPassedPointer
    ^self
! !

"abtdbh.ic method 0x20000070; bytecode file offset 0x11ba8"
!EmExtendedClassInformation methodsFor: 'recovered'!
abrAsCLangHandle
    ^self
! !

"abtdbh.ic method 0x200000c0; bytecode file offset 0x11ba8"
!EmExtendedClassInformation methodsFor: 'recovered'!
contents
    ^self
! !

"abtdbh.ic method 0x2000060c; bytecode file offset 0x1211c"
!EmExtendedClassInformation methodsFor: 'recovered'!
abrAsCLangLong
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (0).
    ^recoveredValue0
! !

"abtdbh.ic method 0x20000618; bytecode file offset 0x1211c"
!EmExtendedClassInformation methodsFor: 'recovered'!
abrAsCLangUShort
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"abtdbh.ic method 0x20000624; bytecode file offset 0x1211c"
!EmExtendedClassInformation methodsFor: 'recovered'!
abrAsCLangBoolean
    | recoveredValue0 |
    recoveredValue0 := (self) int16At: (0).
    ^recoveredValue0
! !

"abtdbh.ic method 0x20000630; bytecode file offset 0x1211c"
!EmExtendedClassInformation methodsFor: 'recovered'!
abrAsCLangULong
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"abtdbh.ic method 0x2000063c; bytecode file offset 0x1211c"
!EmExtendedClassInformation methodsFor: 'recovered'!
abrAsCLangShort
    | recoveredValue0 |
    recoveredValue0 := (self) int16At: (0).
    ^recoveredValue0
! !

"abtdbh.ic method 0x20000648; bytecode file offset 0x1211c"
!EmExtendedClassInformation methodsFor: 'recovered'!
asAbtLong
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (0).
    ^recoveredValue0
! !

"abtdbh.ic method 0x2000065c; bytecode file offset 0x12130"
!EmExtendedClassInformation methodsFor: 'recovered'!
abrAsCLangChar
    | recoveredValue0 |
    recoveredValue0 := (self) at: (1).
    ^recoveredValue0
! !

"abtdbh.ic method 0x20000840; bytecode file offset 0x12368"
!EmExtendedClassInformation methodsFor: 'recovered'!
abrAsString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt16.
    recoveredValue1 := (recoveredValue0) abtFromBytes: (self).
    ^recoveredValue1
! !

"abtdbh.ic method 0x20000db4; bytecode file offset 0x12888"
!EmExtendedClassInformation methodsFor: 'recovered'!
abtHash32: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) abtPrimHashBytes: (self) seed: (recoveredValue0).
    ^recoveredValue1
! !

"abtdbh.ic method 0x20005448; bytecode file offset 0x16f38"
!EmExtendedClassInformation methodsFor: 'recovered'!
abtAsInteger
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) int8At: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) int16At: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) int32At: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := 8.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) int64At: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := EsCompiledMethodIsNativeMask.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) description.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) error: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

