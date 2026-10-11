"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000117c; bytecode file offset 0x155d58"
!OSSystemPowerStatus methodsFor: 'recovered'!
ACLineStatus
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200024d4; bytecode file offset 0x155e38"
!OSSystemPowerStatus methodsFor: 'recovered'!
BatteryFlag
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (1).
    ^recoveredValue0
! !

"psupp.ic method 0x200025c0; bytecode file offset 0x1561c4"
!OSSystemPowerStatus methodsFor: 'recovered'!
BatteryLifePercent
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x200029ac; bytecode file offset 0x156280"
!OSSystemPowerStatus methodsFor: 'recovered'!
Reserved1
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (3).
    ^recoveredValue0
! !

"psupp.ic method 0x20003434; bytecode file offset 0x157170"
!OSSystemPowerStatus methodsFor: 'recovered'!
BatteryLifeTime
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003ed4; bytecode file offset 0x157f64"
!OSSystemPowerStatus methodsFor: 'recovered'!
BatteryFullLifeTime
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20008d78; bytecode file offset 0x15caa4"
!OSSystemPowerStatus methodsFor: 'recovered'!
getSystemPowerStatus
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := GetSystemPowerStatus.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2000fbb4; bytecode file offset 0x165330"
!OSSystemPowerStatus methodsFor: 'recovered'!
ACLineStatus: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011b04; bytecode file offset 0x16542c"
!OSSystemPowerStatus methodsFor: 'recovered'!
BatteryFlag: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (1) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011de0; bytecode file offset 0x1657d4"
!OSSystemPowerStatus methodsFor: 'recovered'!
BatteryLifePercent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011f6c; bytecode file offset 0x1658ac"
!OSSystemPowerStatus methodsFor: 'recovered'!
Reserved1: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (3) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012dac; bytecode file offset 0x166e00"
!OSSystemPowerStatus methodsFor: 'recovered'!
BatteryLifeTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013988; bytecode file offset 0x1683c0"
!OSSystemPowerStatus methodsFor: 'recovered'!
BatteryFullLifeTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

