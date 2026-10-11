"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001ad44; bytecode file offset 0x92209c"
!SGCgModeGroupType methodsFor: 'recovered'!
label
    ^'modegroup'
! !

"ASDBase.ic method 0x20023330; bytecode file offset 0x92209c"
!SGCgModeGroupType methodsFor: 'recovered'!
modelTypeClassName
    ^'ARModeGroup'
! !

"ASDBase.ic method 0x2003f3a8; bytecode file offset 0x93bf94"
!SGCgModeGroupType methodsFor: 'recovered'!
arCategory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgAutosarSettings.
    recoveredValue1 := (recoveredValue0) categoryModeGroupType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20077114; bytecode file offset 0x9757c8"
!SGCgModeGroupType methodsFor: 'recovered'!
definesForEnums
    ^true
! !

"ASDBase.ic method 0x20077bcc; bytecode file offset 0x9757c8"
!SGCgModeGroupType methodsFor: 'recovered'!
hasCgConsecutiveValues
    ^true
! !

"ASDBase.ic method 0x20077de4; bytecode file offset 0x9757c8"
!SGCgModeGroupType methodsFor: 'recovered'!
isCgModeGroupType
    ^true
! !

"ASDBase.ic method 0x2007a834; bytecode file offset 0x97c330"
!SGCgModeGroupType methodsFor: 'recovered'!
expandEnumDefines
    ^false
! !

"ASDBase.ic method 0x200d2124; bytecode file offset 0x9ceaf0"
!SGCgModeGroupType methodsFor: 'recovered'!
createErrLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) className.
    recoveredValue1 := ('mode group "') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , ('"').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e09e8; bytecode file offset 0x9dd2e8"
!SGCgModeGroupType methodsFor: 'recovered'!
modelType
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ARModeGroup.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) enumerationMap.
    recoveredValue4 := (recoveredValue3) copy.
    (recoveredValue2) enumerationMap: (recoveredValue4).
    ^recoveredValue1
! !

