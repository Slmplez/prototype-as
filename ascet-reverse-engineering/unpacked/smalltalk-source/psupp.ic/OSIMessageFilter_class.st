"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200307cc; bytecode file offset 0x184078"
!OSIMessageFilter class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'handleInComingCall:htaskCaller:dwTickCount:lpInterfaceInfo:' 'retryRejectedCall:dwTickCount:dwRejectType:' 'messagePending:dwTickCount:dwPendingType:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (4).
    HandleInComingCall := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (6).
    MessagePending := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (5).
    RetryRejectedCall := recoveredValue2.
    ^self
! !

"psupp.ic method 0x20046400; bytecode file offset 0x199cc8"
!OSIMessageFilter class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 |
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
    recoveredValue9 := (self) parameterForType: ('uint32').
    (recoveredValue8) add: (recoveredValue9).
    recoveredValue10 := recoveredValue7.
    recoveredValue11 := OSHtask.
    recoveredValue12 := (self) parameterForType: ('immediate') class: (recoveredValue11).
    (recoveredValue10) add: (recoveredValue12).
    recoveredValue13 := recoveredValue7.
    recoveredValue14 := (self) parameterForType: ('uint32').
    (recoveredValue13) add: (recoveredValue14).
    recoveredValue15 := recoveredValue7.
    recoveredValue16 := OSInterfaceinfo.
    recoveredValue17 := (self) parameterForClass: (recoveredValue16).
    (recoveredValue15) add: (recoveredValue17).
    recoveredValue18 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue18).
    recoveredValue19 := recoveredLocal2.
    (recoveredValue19) add: ('uint32').
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := OrderedCollection.
    recoveredValue22 := (recoveredValue21) new.
    recoveredValue23 := recoveredValue22.
    recoveredValue24 := OSHtask.
    recoveredValue25 := (self) parameterForType: ('immediate') class: (recoveredValue24).
    (recoveredValue23) add: (recoveredValue25).
    recoveredValue26 := recoveredValue22.
    recoveredValue27 := (self) parameterForType: ('uint32').
    (recoveredValue26) add: (recoveredValue27).
    recoveredValue28 := recoveredValue22.
    recoveredValue29 := (self) parameterForType: ('uint32').
    (recoveredValue28) add: (recoveredValue29).
    recoveredValue30 := (recoveredValue22) asArray.
    (recoveredValue20) add: (recoveredValue30).
    recoveredValue31 := recoveredLocal2.
    (recoveredValue31) add: ('uint32').
    recoveredValue32 := recoveredLocal1.
    recoveredValue33 := OrderedCollection.
    recoveredValue34 := (recoveredValue33) new.
    recoveredValue35 := recoveredValue34.
    recoveredValue36 := OSHtask.
    recoveredValue37 := (self) parameterForType: ('immediate') class: (recoveredValue36).
    (recoveredValue35) add: (recoveredValue37).
    recoveredValue38 := recoveredValue34.
    recoveredValue39 := (self) parameterForType: ('uint32').
    (recoveredValue38) add: (recoveredValue39).
    recoveredValue40 := recoveredValue34.
    recoveredValue41 := (self) parameterForType: ('uint32').
    (recoveredValue40) add: (recoveredValue41).
    recoveredValue42 := (recoveredValue34) asArray.
    (recoveredValue32) add: (recoveredValue42).
    recoveredValue43 := Array.
    recoveredValue44 := recoveredLocal2.
    recoveredValue45 := recoveredLocal1.
    recoveredValue46 := (recoveredValue43) with: (recoveredValue44) with: (recoveredValue45).
    ^recoveredValue46
! !

