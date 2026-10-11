"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004bec4; bytecode file offset 0x94877c"
!ASAP2BytesMathCompuMethod methodsFor: 'recovered'!
coeffs
    | recoveredValue0 |
    recoveredValue0 := (self) at: (5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c154; bytecode file offset 0x948b80"
!ASAP2BytesMathCompuMethod methodsFor: 'recovered'!
refUnit
    | recoveredValue0 |
    recoveredValue0 := (self) at: (6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20056430; bytecode file offset 0x952d3c"
!ASAP2BytesMathCompuMethod methodsFor: 'recovered'!
isChangeToBitMaskPossible: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) hasOneBitSet.
    recoveredValue2 := (recoveredValue1) not.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20063274; bytecode file offset 0x95fbd0"
!ASAP2BytesMathCompuMethod methodsFor: 'recovered'!
c1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) coeffs.
    recoveredValue1 := (recoveredValue0) at: (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200633cc; bytecode file offset 0x95fcb8"
!ASAP2BytesMathCompuMethod methodsFor: 'recovered'!
c2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) coeffs.
    recoveredValue1 := (recoveredValue0) at: (2).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20063494; bytecode file offset 0x95fd80"
!ASAP2BytesMathCompuMethod methodsFor: 'recovered'!
c3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) coeffs.
    recoveredValue1 := (recoveredValue0) at: (3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20063578; bytecode file offset 0x95fe44"
!ASAP2BytesMathCompuMethod methodsFor: 'recovered'!
c4
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) coeffs.
    recoveredValue1 := (recoveredValue0) at: (4).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200635bc; bytecode file offset 0x95fec8"
!ASAP2BytesMathCompuMethod methodsFor: 'recovered'!
c5
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) coeffs.
    recoveredValue1 := (recoveredValue0) at: (5).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20063650; bytecode file offset 0x95ff2c"
!ASAP2BytesMathCompuMethod methodsFor: 'recovered'!
c6
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) coeffs.
    recoveredValue1 := (recoveredValue0) at: (6).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006368c; bytecode file offset 0x95ff58"
!ASAP2BytesMathCompuMethod methodsFor: 'recovered'!
c7
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) coeffs.
    recoveredValue1 := (recoveredValue0) at: (7).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2007f54c; bytecode file offset 0x97c330"
!ASAP2BytesMathCompuMethod methodsFor: 'recovered'!
hasInverse
    ^false
! !

"ASDBase.ic method 0x200a6cf8; bytecode file offset 0x9a3694"
!ASAP2BytesMathCompuMethod methodsFor: 'recovered'!
refUnit: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (6) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x201e4454; bytecode file offset 0xae0d28"
!ASAP2BytesMathCompuMethod methodsFor: 'recovered'!
checkContents
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) coeffs.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := SCASAP2DBMissingCoeffs.
    recoveredBlock5Value1 := (self) name.
    recoveredBlock5Value2 := (recoveredBlock5Value0) , (recoveredBlock5Value1).
    (self) monitorWarning: (recoveredBlock5Value2).
    recoveredBlock5Value3 := (self) coeffs: (#(0 1 0 0 1 0)).
    recoveredBlock5Value3
].
    (recoveredValue0) ifNil: (recoveredValue1).
    ^true
! !

"ASDBase.ic method 0x20333e04; bytecode file offset 0xc306e0"
!ASAP2BytesMathCompuMethod methodsFor: 'recovered'!
coeffs: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := SCASAP2DBMissingCoeffs.
    recoveredBlock5Value1 := (self) name.
    recoveredBlock5Value2 := (recoveredBlock5Value0) , (recoveredBlock5Value1).
    recoveredBlock5Value3 := (self) monitorWarning: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 7.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := Array.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack5 := 7.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack6 := (recoveredStack6) size.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack5 := (recoveredStack5) - (recoveredStack6).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := (recoveredStack4) new: (recoveredStack5).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := (recoveredStack4) fillWith: (recoveredStack5).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

