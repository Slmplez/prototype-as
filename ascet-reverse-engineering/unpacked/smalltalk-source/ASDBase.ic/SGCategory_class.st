"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20205724; bytecode file offset 0xb01ffc"
!SGCategory class methodsFor: 'recovered'!
languages
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: ('german') put: ('German').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: ('french') put: ('French').
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) at: ('english') put: ('English').
    ^recoveredValue2
! !

"ASDBase.ic method 0x2020af68; bytecode file offset 0xb0783c"
!SGCategory class methodsFor: 'recovered'!
createDefault
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) name: ('view').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) attributes: (0).
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) viewAttribute: (0).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) bdeAttributes: (0).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) createDefaultVisibility.
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) setVanish.
    ^recoveredValue0
! !

