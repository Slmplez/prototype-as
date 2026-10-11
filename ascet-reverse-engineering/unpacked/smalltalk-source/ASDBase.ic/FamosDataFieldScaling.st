"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006c70c; bytecode file offset 0x9692b0"
!FamosDataFieldScaling methodsFor: 'recovered'!
dx
    | recoveredValue0 |
    recoveredValue0 := dx.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ce38; bytecode file offset 0x969c04"
!FamosDataFieldScaling methodsFor: 'recovered'!
calibrated
    | recoveredValue0 |
    recoveredValue0 := calibrated.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006da9c; bytecode file offset 0x96a390"
!FamosDataFieldScaling methodsFor: 'recovered'!
unitLength
    | recoveredValue0 |
    recoveredValue0 := unitLength.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006de40; bytecode file offset 0x96a9dc"
!FamosDataFieldScaling methodsFor: 'recovered'!
unit
    | recoveredValue0 |
    recoveredValue0 := unit.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c3434; bytecode file offset 0x9bfde0"
!FamosDataFieldScaling methodsFor: 'recovered'!
dx: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dx := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c37d8; bytecode file offset 0x9c058c"
!FamosDataFieldScaling methodsFor: 'recovered'!
calibrated: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    calibrated := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3d3c; bytecode file offset 0x9c0bf0"
!FamosDataFieldScaling methodsFor: 'recovered'!
unitLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    unitLength := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4598; bytecode file offset 0x9c11bc"
!FamosDataFieldScaling methodsFor: 'recovered'!
unit: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    unit := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d93ec; bytecode file offset 0x9d5d08"
!FamosDataFieldScaling methodsFor: 'recovered'!
addToSuper: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) parent: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) scaling: (self).
    ^true
! !

"ASDBase.ic method 0x200faf38; bytecode file offset 0x9f7824"
!FamosDataFieldScaling methodsFor: 'recovered'!
putDxIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := dx.
    (self) putIn: (recoveredValue1) number: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2015323c; bytecode file offset 0xa4faf8"
!FamosDataFieldScaling methodsFor: 'recovered'!
equal: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dx.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) dx.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := unit.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) unit.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20191434; bytecode file offset 0xa8dcf4"
!FamosDataFieldScaling methodsFor: 'recovered'!
initialize
    super initialize.
    dx := nil.
    calibrated := nil.
    unitLength := 0.
    unit := ''.
    ^self
! !

"ASDBase.ic method 0x20200980; bytecode file offset 0xafd24c"
!FamosDataFieldScaling methodsFor: 'recovered'!
putFieldsIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    (self) putDxIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putCalibratedIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putUnitLengthIn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) putUnitIn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) putIn: (recoveredValue4) zeros: (3).
    recoveredValue5 := recoveredArg1.
    (self) putEndIn: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2021bd44; bytecode file offset 0xb18610"
!FamosDataFieldScaling methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    super getFrom: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getNumber: (recoveredValue1).
    dx := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) getBoolean: (recoveredValue3).
    calibrated := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (self) getInteger: (recoveredValue5).
    unitLength := recoveredValue6.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (self) getString: (recoveredValue7).
    unit := recoveredValue8.
    ^self
! !

