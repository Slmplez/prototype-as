"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20034b78; bytecode file offset 0x18842c"
!OSIRunnableObject class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'getRunningClass:' 'run:' 'isRunning' 'lockRunning:fLastUnlockCloses:' 'setContainedObject:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (4).
    GetRunningClass := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (6).
    IsRunning := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (7).
    LockRunning := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (5).
    Run := recoveredValue3.
    recoveredValue4 := (self) callOutPlatformFunctionAt: (8).
    SetContainedObject := recoveredValue4.
    ^self
! !

"psupp.ic method 0x20044060; bytecode file offset 0x197928"
!OSIRunnableObject class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 |
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
    recoveredValue9 := OSClsid.
    recoveredValue10 := (self) parameterForClass: (recoveredValue9).
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue11).
    recoveredValue12 := recoveredLocal2.
    (recoveredValue12) add: ('uint32').
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := OrderedCollection.
    recoveredValue15 := (recoveredValue14) new.
    recoveredValue16 := recoveredValue15.
    recoveredValue17 := OSIBindCtx.
    recoveredValue18 := (self) parameterForClass: (recoveredValue17).
    (recoveredValue16) add: (recoveredValue18).
    recoveredValue19 := (recoveredValue15) asArray.
    (recoveredValue13) add: (recoveredValue19).
    recoveredValue20 := recoveredLocal2.
    (recoveredValue20) add: ('bool').
    recoveredValue21 := recoveredLocal1.
    (recoveredValue21) add: (#()).
    recoveredValue22 := recoveredLocal2.
    (recoveredValue22) add: ('uint32').
    recoveredValue23 := recoveredLocal1.
    recoveredValue24 := OrderedCollection.
    recoveredValue25 := (recoveredValue24) new.
    recoveredValue26 := recoveredValue25.
    recoveredValue27 := (self) parameterForType: ('bool').
    (recoveredValue26) add: (recoveredValue27).
    recoveredValue28 := recoveredValue25.
    recoveredValue29 := (self) parameterForType: ('bool').
    (recoveredValue28) add: (recoveredValue29).
    recoveredValue30 := (recoveredValue25) asArray.
    (recoveredValue23) add: (recoveredValue30).
    recoveredValue31 := recoveredLocal2.
    (recoveredValue31) add: ('uint32').
    recoveredValue32 := recoveredLocal1.
    recoveredValue33 := OrderedCollection.
    recoveredValue34 := (recoveredValue33) new.
    recoveredValue35 := recoveredValue34.
    recoveredValue36 := (self) parameterForType: ('bool').
    (recoveredValue35) add: (recoveredValue36).
    recoveredValue37 := (recoveredValue34) asArray.
    (recoveredValue32) add: (recoveredValue37).
    recoveredValue38 := Array.
    recoveredValue39 := recoveredLocal2.
    recoveredValue40 := recoveredLocal1.
    recoveredValue41 := (recoveredValue38) with: (recoveredValue39) with: (recoveredValue40).
    ^recoveredValue41
! !

