"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005dee0; bytecode file offset 0x95a79c"
!FamosUserDefinedKey methodsFor: 'recovered'!
dataAsInteger
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := data.
    recoveredValue1 := (recoveredValue0) asString.
    recoveredValue2 := (recoveredValue1) asInteger.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006c6f4; bytecode file offset 0x9692b0"
!FamosUserDefinedKey methodsFor: 'recovered'!
idLength
    | recoveredValue0 |
    recoveredValue0 := idLength.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d2a0; bytecode file offset 0x969c04"
!FamosUserDefinedKey methodsFor: 'recovered'!
id
    | recoveredValue0 |
    recoveredValue0 := id.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d86c; bytecode file offset 0x96a390"
!FamosUserDefinedKey methodsFor: 'recovered'!
data
    | recoveredValue0 |
    recoveredValue0 := data.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006dfe0; bytecode file offset 0x96a9dc"
!FamosUserDefinedKey methodsFor: 'recovered'!
writePosition
    | recoveredValue0 |
    recoveredValue0 := writePosition.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007510c; bytecode file offset 0x9757c8"
!FamosUserDefinedKey methodsFor: 'recovered'!
isFamosUserDefinedKey
    ^true
! !

"ASDBase.ic method 0x200c32ec; bytecode file offset 0x9bfde0"
!FamosUserDefinedKey methodsFor: 'recovered'!
idLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    idLength := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3a18; bytecode file offset 0x9c058c"
!FamosUserDefinedKey methodsFor: 'recovered'!
id: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    id := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c429c; bytecode file offset 0x9c0bf0"
!FamosUserDefinedKey methodsFor: 'recovered'!
data: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    data := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c43f8; bytecode file offset 0x9c11bc"
!FamosUserDefinedKey methodsFor: 'recovered'!
writePosition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    writePosition := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d942c; bytecode file offset 0x9d5d08"
!FamosUserDefinedKey methodsFor: 'recovered'!
addToSuper: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) parent: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) addUserDefined: (self).
    ^true
! !

"ASDBase.ic method 0x200faf58; bytecode file offset 0x9f7824"
!FamosUserDefinedKey methodsFor: 'recovered'!
putIdLengthIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := idLength.
    (self) putIn: (recoveredValue1) integer: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200faf98; bytecode file offset 0x9f78a4"
!FamosUserDefinedKey methodsFor: 'recovered'!
putIdIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := id.
    (self) putIn: (recoveredValue1) ident: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20140808; bytecode file offset 0xa3d0d4"
!FamosUserDefinedKey methodsFor: 'recovered'!
initialize
    super initialize.
    idLength := nil.
    id := nil.
    data := nil.
    ^self
! !

"ASDBase.ic method 0x20163be8; bytecode file offset 0xa605cc"
!FamosUserDefinedKey methodsFor: 'recovered'!
putFieldsIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) putIdLengthIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putIdIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putDataIn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) putEndIn: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20199168; bytecode file offset 0xa95a30"
!FamosUserDefinedKey methodsFor: 'recovered'!
getIntegerData
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := data.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInteger.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := data.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := ReadStream.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := data.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) getInteger: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201cd238; bytecode file offset 0xac9b00"
!FamosUserDefinedKey methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    super getFrom: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getInteger: (recoveredValue1).
    idLength := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) getString: (recoveredValue3).
    id := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (self) getBytes: (recoveredValue5).
    data := recoveredValue6.
    ^self
! !

"ASDBase.ic method 0x202615dc; bytecode file offset 0xb5dea8"
!FamosUserDefinedKey methodsFor: 'recovered'!
putDataIn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) putSeparatorIn: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := data.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInteger.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := data.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) putIn: (recoveredStack1) integer: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := data.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBytes.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := data.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) putIn: (recoveredStack1) bytes: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

