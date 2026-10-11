"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2019e52c; bytecode file offset 0xa9be28"
!MSRDOCMsrsw class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    keyWords := recoveredValue1.
    recoveredValue2 := keyWords.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: ('begin') put: ('<msrsw>').
    (recoveredValue2) at: ('end') put: ('</msrsw>').
    ^self
! !

"ASDBase.ic method 0x20275050; bytecode file offset 0xb71928"
!MSRDOCMsrsw class methodsFor: 'recovered'!
initializeKnownKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    knownKeyWords := recoveredValue1.
    recoveredValue2 := knownKeyWords.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) add: ('<short-name>').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) add: ('<project-data>').
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) add: ('<sw-data-dictionary-spec>').
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) add: ('<sw-function-spec>').
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) add: ('<sw-param-contents-spec>').
    (recoveredValue2) add: ('<add-spec>').
    ^self
! !

