"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002454; bytecode file offset 0x155d58"
!OSTimeZoneInformation methodsFor: 'recovered'!
Bias
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20008a68; bytecode file offset 0x15caa4"
!OSTimeZoneInformation methodsFor: 'recovered'!
setTimeZoneInformation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SetTimeZoneInformation.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20008bc8; bytecode file offset 0x15caa4"
!OSTimeZoneInformation methodsFor: 'recovered'!
getTimeZoneInformation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := GetTimeZoneInformation.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2000b0f4; bytecode file offset 0x15e98c"
!OSTimeZoneInformation methodsFor: 'recovered'!
DaylightBias
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (168).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b6ac; bytecode file offset 0x15ef44"
!OSTimeZoneInformation methodsFor: 'recovered'!
StandardBias
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (84).
    ^recoveredValue0
! !

"psupp.ic method 0x20010880; bytecode file offset 0x165330"
!OSTimeZoneInformation methodsFor: 'recovered'!
Bias: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001f080; bytecode file offset 0x17291c"
!OSTimeZoneInformation methodsFor: 'recovered'!
DaylightDate
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSSystemtime.
    recoveredValue1 := (self) structAt: (152) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001f1ec; bytecode file offset 0x172a98"
!OSTimeZoneInformation methodsFor: 'recovered'!
StandardDate
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSSystemtime.
    recoveredValue1 := (self) structAt: (68) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001f764; bytecode file offset 0x173014"
!OSTimeZoneInformation methodsFor: 'recovered'!
DaylightDate: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (152) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001f8ec; bytecode file offset 0x17319c"
!OSTimeZoneInformation methodsFor: 'recovered'!
DaylightBias: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (168) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001fd08; bytecode file offset 0x1735ac"
!OSTimeZoneInformation methodsFor: 'recovered'!
StandardDate: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (68) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20020038; bytecode file offset 0x17396c"
!OSTimeZoneInformation methodsFor: 'recovered'!
StandardBias: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (84) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2002133c; bytecode file offset 0x174df8"
!OSTimeZoneInformation methodsFor: 'recovered'!
systemTimeToTzSpecificLocalTime: recoveredArg1 lpLocalTime: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SystemTimeToTzSpecificLocalTime.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x200220a8; bytecode file offset 0x175944"
!OSTimeZoneInformation methodsFor: 'recovered'!
StandardName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt16.
    recoveredValue1 := (self) arrayAt: (4) size: (32) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20023948; bytecode file offset 0x1771ec"
!OSTimeZoneInformation methodsFor: 'recovered'!
StandardName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (4) put: (recoveredValue0) size: (32).
    ^self
! !

"psupp.ic method 0x200276b4; bytecode file offset 0x17af50"
!OSTimeZoneInformation methodsFor: 'recovered'!
DaylightName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt16.
    recoveredValue1 := (self) arrayAt: (88) size: (32) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20027b2c; bytecode file offset 0x17b3c4"
!OSTimeZoneInformation methodsFor: 'recovered'!
DaylightName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (88) put: (recoveredValue0) size: (32).
    ^self
! !

