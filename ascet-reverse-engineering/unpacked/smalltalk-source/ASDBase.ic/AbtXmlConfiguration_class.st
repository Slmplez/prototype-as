"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012858; bytecode file offset 0x912098"
!AbtXmlConfiguration class methodsFor: 'recovered'!
current
    | recoveredValue0 |
    recoveredValue0 := Current.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20054818; bytecode file offset 0x951190"
!AbtXmlConfiguration class methodsFor: 'recovered'!
current: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    Current := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2005ee9c; bytecode file offset 0x95b7f0"
!AbtXmlConfiguration class methodsFor: 'recovered'!
reset
    (self) current: (nil).
    ^self
! !

"ASDBase.ic method 0x200912e0; bytecode file offset 0x98de70"
!AbtXmlConfiguration class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2017b21c; bytecode file offset 0xa77aec"
!AbtXmlConfiguration class methodsFor: 'recovered'!
startUp
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (recoveredValue1) properties.
    recoveredValue3 := System.
    recoveredValue4 := (recoveredValue3) iniFileGetContentsArray: ('Xml').
    (recoveredValue2) addAll: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    (self) current: (recoveredValue5).
    ^self
! !

