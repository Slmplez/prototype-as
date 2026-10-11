"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2015f800; bytecode file offset 0xa5c0d0"
!ASDAscetLinkCreateConfig class methodsFor: 'recovered'!
createDefault
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := ASDAscetLinkOptions.
    recoveredValue3 := (recoveredValue2) instance.
    recoveredValue4 := (recoveredValue3) optionIncludeDataStorage.
    (recoveredValue1) optionIncludeDataStorage: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := ASDAscetLinkOptions.
    recoveredValue7 := (recoveredValue6) instance.
    recoveredValue8 := (recoveredValue7) optionDestinationAsToken.
    (recoveredValue5) optionDestinationAsToken: (recoveredValue8).
    ^recoveredValue0
! !

