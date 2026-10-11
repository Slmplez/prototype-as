"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003c5c8; bytecode file offset 0x938e84"
!MSRDOCAsap6PrmMethod class methodsFor: 'recovered'!
createWitha: recoveredArg1 b: recoveredArg2 c: recoveredArg3 d: recoveredArg4 e: recoveredArg5 f: recoveredArg6
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2019e88c; bytecode file offset 0xa9be28"
!MSRDOCAsap6PrmMethod class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    keyWords := recoveredValue1.
    recoveredValue2 := keyWords.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: ('begin') put: ('<sw-asap-6-prm-method>').
    (recoveredValue2) at: ('end') put: ('</sw-asap-6-prm-method>').
    ^self
! !

"ASDBase.ic method 0x201fd11c; bytecode file offset 0xaf9a10"
!MSRDOCAsap6PrmMethod class methodsFor: 'recovered'!
initializeNotSupportedKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    notSupportedKeyWords := recoveredValue1.
    recoveredValue2 := notSupportedKeyWords.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) add: ('sw-compu-method-table').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) add: ('sw-compu-method-text').
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) add: ('sw-compu-generic-math').
    (recoveredValue2) add: ('prog-code').
    ^self
! !

