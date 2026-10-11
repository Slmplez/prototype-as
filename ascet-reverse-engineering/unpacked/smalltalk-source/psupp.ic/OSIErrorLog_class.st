"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20026cb4; bytecode file offset 0x17a588"
!OSIErrorLog class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'addError:pExcepInfo:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (4).
    AddError := recoveredValue0.
    ^self
! !

"psupp.ic method 0x20037574; bytecode file offset 0x18ae30"
!OSIErrorLog class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    (recoveredValue4) add: ('uint32').
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := OrderedCollection.
    recoveredValue7 := (recoveredValue6) new.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := OSOleStringZ.
    recoveredValue10 := (self) parameterForClass: (recoveredValue9).
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue7.
    recoveredValue12 := OSExcepinfo.
    recoveredValue13 := (self) parameterForClass: (recoveredValue12).
    (recoveredValue11) add: (recoveredValue13).
    recoveredValue14 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue14).
    recoveredValue15 := Array.
    recoveredValue16 := recoveredLocal2.
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := (recoveredValue15) with: (recoveredValue16) with: (recoveredValue17).
    ^recoveredValue18
! !

