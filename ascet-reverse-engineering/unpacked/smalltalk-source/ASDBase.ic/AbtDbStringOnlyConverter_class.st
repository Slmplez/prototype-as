"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200149b8; bytecode file offset 0x912098"
!AbtDbStringOnlyConverter class methodsFor: 'recovered'!
displayName
    | recoveredValue0 |
    recoveredValue0 := AbtCvtrNameDbOnlyString.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014de4; bytecode file offset 0x912098"
!AbtDbStringOnlyConverter class methodsFor: 'recovered'!
objectClass
    | recoveredValue0 |
    recoveredValue0 := DBString.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007e0bc; bytecode file offset 0x97c330"
!AbtDbStringOnlyConverter class methodsFor: 'recovered'!
worksWellWithContinuousNotification
    ^false
! !

"ASDBase.ic method 0x20089fbc; bytecode file offset 0x9868f8"
!AbtDbStringOnlyConverter class methodsFor: 'recovered'!
defaultObjectFromEmptyString
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Locale.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := (recoveredValue1) preferredStringClass.
    recoveredValue3 := (recoveredValue2) new.
    ^recoveredValue3
! !

