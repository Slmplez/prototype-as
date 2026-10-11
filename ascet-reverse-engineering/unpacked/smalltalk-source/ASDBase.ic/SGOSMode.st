"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20068534; bytecode file offset 0x965b90"
!SGOSMode methodsFor: 'recovered'!
isStartMode
    | recoveredValue0 |
    recoveredValue0 := startMode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008f298; bytecode file offset 0x98bd60"
!SGOSMode methodsFor: 'recovered'!
isInactiveOpMode
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) name.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) inactiveName.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008f324; bytecode file offset 0x98bd60"
!SGOSMode methodsFor: 'recovered'!
isActiveOpMode
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) name.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) activeName.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c035c; bytecode file offset 0x9bd228"
!SGOSMode methodsFor: 'recovered'!
startMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    startMode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0f90; bytecode file offset 0x9bdf14"
!SGOSMode methodsFor: 'recovered'!
ctMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ctMode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f0b40; bytecode file offset 0x9ed3f4"
!SGOSMode methodsFor: 'recovered'!
isCTMode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ctMode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := ctMode.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011f938; bytecode file offset 0xa1c200"
!SGOSMode methodsFor: 'recovered'!
buildMdl: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) name.
    recoveredValue2 := (self) id.
    recoveredValue3 := (self) isStartMode.
    recoveredValue4 := (self) isCTMode.
    (recoveredValue0) operatingMode: (recoveredValue1) id: (recoveredValue2) startMode: (recoveredValue3) ctMode: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2012fa98; bytecode file offset 0xa2c3a4"
!SGOSMode methodsFor: 'recovered'!
initialize
    super initialize.
    (self) startMode: (false).
    (self) ctMode: (false).
    ^self
! !

"ASDBase.ic method 0x2015168c; bytecode file offset 0xa4df58"
!SGOSMode methodsFor: 'recovered'!
duplicate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := super duplicate.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) isStartMode.
    (recoveredValue1) startMode: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := (self) isCTMode.
    (recoveredValue3) ctMode: (recoveredValue4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20309c28; bytecode file offset 0xc06500"
!SGOSMode methodsFor: 'recovered'!
osModeLabel
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) idString.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isStartMode.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCTMode.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := ' [START/CT]'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) isStartMode.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := ' [START]'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCTMode.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := ' [CT]'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

