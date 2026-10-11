"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2001da0c; bytecode file offset 0x171368"
!OSIBindCtx methodsFor: 'recovered'!
releaseBoundObjects
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ReleaseBoundObjects.
    recoveredValue1 := (recoveredValue0) callWith: (5) with: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2002291c; bytecode file offset 0x1762e8"
!OSIBindCtx methodsFor: 'recovered'!
registerObjectBound: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := RegisterObjectBound.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (3) with: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20022b1c; bytecode file offset 0x1764f8"
!OSIBindCtx methodsFor: 'recovered'!
revokeObjectBound: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := RevokeObjectBound.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (4) with: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20022fbc; bytecode file offset 0x176878"
!OSIBindCtx methodsFor: 'recovered'!
setBindOptions: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SetBindOptions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (6) with: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2002307c; bytecode file offset 0x176988"
!OSIBindCtx methodsFor: 'recovered'!
getBindOptions: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := GetBindOptions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (7) with: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2002318c; bytecode file offset 0x176a68"
!OSIBindCtx methodsFor: 'recovered'!
getRunningObjectTable: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := GetRunningObjectTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (8) with: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2002333c; bytecode file offset 0x176bf8"
!OSIBindCtx methodsFor: 'recovered'!
enumObjectParam: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EnumObjectParam.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (11) with: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20025530; bytecode file offset 0x178e0c"
!OSIBindCtx methodsFor: 'recovered'!
revokeObjectParam: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RevokeObjectParam.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asOlePSZ.
    recoveredValue3 := (recoveredValue0) callWith: (12) with: (self) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x20028134; bytecode file offset 0x17b9d4"
!OSIBindCtx methodsFor: 'recovered'!
registerObjectParam: recoveredArg1 punk: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := RegisterObjectParam.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asOlePSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) callWith: (9) with: (self) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x20028158; bytecode file offset 0x17b9f8"
!OSIBindCtx methodsFor: 'recovered'!
getObjectParam: recoveredArg1 ppunk: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := GetObjectParam.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asOlePSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) callWith: (10) with: (self) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

