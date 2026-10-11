"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001e80; bytecode file offset 0x8ffcfc"
!CwWidget class methodsFor: 'recovered'!
clearExtendedCallbacks
    ^self
! !

"ASDBase.ic method 0x20007760; bytecode file offset 0x908be4"
!CwWidget class methodsFor: 'recovered'!
extendedCallbacks
    | recoveredValue0 |
    recoveredValue0 := (self) initializeExtendedCallbacks.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003caf8; bytecode file offset 0x93bf94"
!CwWidget class methodsFor: 'recovered'!
constructEventsTriggered
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200578e8; bytecode file offset 0x956284"
!CwWidget class methodsFor: 'recovered'!
isExtendedCallback: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) extendedCallbacks.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) includes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20295988; bytecode file offset 0xb92268"
!CwWidget class methodsFor: 'recovered'!
initializeExtendedCallbacks
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) add: ('aboutToManageWidget').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) add: ('aboutToOpenWidget').
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) add: ('openedWidget').
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) add: ('aboutToCloseWidget').
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) add: ('closedWidget').
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) add: ('timer').
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) constructEventsTriggered.
    (recoveredValue8) addAll: (recoveredValue9).
    ^recoveredValue1
! !

