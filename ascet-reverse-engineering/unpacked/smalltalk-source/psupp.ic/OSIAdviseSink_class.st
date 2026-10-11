"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20034d80; bytecode file offset 0x188634"
!OSIAdviseSink class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'onDataChange:pStgmed:' 'onViewChange:lindex:' 'onRename:' 'onSave' 'onClose')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (8).
    OnClose := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (4).
    OnDataChange := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (6).
    OnRename := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (7).
    OnSave := recoveredValue3.
    recoveredValue4 := (self) callOutPlatformFunctionAt: (5).
    OnViewChange := recoveredValue4.
    ^self
! !

"psupp.ic method 0x20043d5c; bytecode file offset 0x19762c"
!OSIAdviseSink class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    (recoveredValue4) add: ('void').
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := OrderedCollection.
    recoveredValue7 := (recoveredValue6) new.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := OSFormatetc.
    recoveredValue10 := (self) parameterForClass: (recoveredValue9).
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue7.
    recoveredValue12 := OSStgmedium.
    recoveredValue13 := (self) parameterForClass: (recoveredValue12).
    (recoveredValue11) add: (recoveredValue13).
    recoveredValue14 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue14).
    recoveredValue15 := recoveredLocal2.
    (recoveredValue15) add: ('void').
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := OrderedCollection.
    recoveredValue18 := (recoveredValue17) new.
    recoveredValue19 := recoveredValue18.
    recoveredValue20 := (self) parameterForType: ('uint32').
    (recoveredValue19) add: (recoveredValue20).
    recoveredValue21 := recoveredValue18.
    recoveredValue22 := (self) parameterForType: ('int32').
    (recoveredValue21) add: (recoveredValue22).
    recoveredValue23 := (recoveredValue18) asArray.
    (recoveredValue16) add: (recoveredValue23).
    recoveredValue24 := recoveredLocal2.
    (recoveredValue24) add: ('void').
    recoveredValue25 := recoveredLocal1.
    recoveredValue26 := OrderedCollection.
    recoveredValue27 := (recoveredValue26) new.
    recoveredValue28 := recoveredValue27.
    recoveredValue29 := OSIMoniker.
    recoveredValue30 := (self) parameterForClass: (recoveredValue29).
    (recoveredValue28) add: (recoveredValue30).
    recoveredValue31 := (recoveredValue27) asArray.
    (recoveredValue25) add: (recoveredValue31).
    recoveredValue32 := recoveredLocal2.
    (recoveredValue32) add: ('void').
    recoveredValue33 := recoveredLocal1.
    (recoveredValue33) add: (#()).
    recoveredValue34 := recoveredLocal2.
    (recoveredValue34) add: ('void').
    recoveredValue35 := recoveredLocal1.
    (recoveredValue35) add: (#()).
    recoveredValue36 := Array.
    recoveredValue37 := recoveredLocal2.
    recoveredValue38 := recoveredLocal1.
    recoveredValue39 := (recoveredValue36) with: (recoveredValue37) with: (recoveredValue38).
    ^recoveredValue39
! !

