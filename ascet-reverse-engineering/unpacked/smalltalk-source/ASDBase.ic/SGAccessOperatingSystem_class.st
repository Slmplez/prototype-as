"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003d228; bytecode file offset 0x93bf94"
!SGAccessOperatingSystem class methodsFor: 'recovered'!
numberOfMethods
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := CMethods.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200bbdd8; bytecode file offset 0x9b8698"
!SGAccessOperatingSystem class methodsFor: 'recovered'!
createForSimKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := (recoveredValue0) oidNumber: (2).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20361930; bytecode file offset 0xc5e24c"
!SGAccessOperatingSystem class methodsFor: 'recovered'!
initializeCMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    CMethods := recoveredValue1.
    recoveredValue2 := CMethods.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: ('initERCOS()') put: (0).
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: ('setToOfflineMode()') put: (1).
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) at: ('setToOnlineMode()') put: (2).
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) at: ('startERCOS()') put: (3).
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) at: ('stopERCOS()') put: (4).
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) at: ('setOperatingModeForId()') put: (5).
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) at: ('getOperatingMode()') put: (6).
    (recoveredValue2) at: ('activateTaskWithId()') put: (7).
    ^self
! !

