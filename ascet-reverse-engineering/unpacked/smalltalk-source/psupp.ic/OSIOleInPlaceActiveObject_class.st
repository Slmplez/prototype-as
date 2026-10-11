"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20034e98; bytecode file offset 0x18874c"
!OSIOleInPlaceActiveObject class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'getWindow:' 'contextSensitiveHelp:' 'translateAccelerator:' 'onFrameWindowActivate:' 'onDocWindowActivate:' 'resizeBorder:pUIWindow:fFrameWindow:' 'enableModeless:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (10).
    EnableModeless := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (8).
    OnDocWindowActivate := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (7).
    OnFrameWindowActivate := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (9).
    ResizeBorder := recoveredValue3.
    recoveredValue4 := (self) callOutPlatformFunctionAt: (6).
    TranslateAccelerator := recoveredValue4.
    ^self
! !

"psupp.ic method 0x2004626c; bytecode file offset 0x199b34"
!OSIOleInPlaceActiveObject class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 |
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
    recoveredValue9 := OSMsg.
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
    recoveredValue17 := (self) parameterForType: ('bool').
    (recoveredValue16) add: (recoveredValue17).
    recoveredValue18 := (recoveredValue15) asArray.
    (recoveredValue13) add: (recoveredValue18).
    recoveredValue19 := recoveredLocal2.
    (recoveredValue19) add: ('uint32').
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := OrderedCollection.
    recoveredValue22 := (recoveredValue21) new.
    recoveredValue23 := recoveredValue22.
    recoveredValue24 := (self) parameterForType: ('bool').
    (recoveredValue23) add: (recoveredValue24).
    recoveredValue25 := (recoveredValue22) asArray.
    (recoveredValue20) add: (recoveredValue25).
    recoveredValue26 := recoveredLocal2.
    (recoveredValue26) add: ('uint32').
    recoveredValue27 := recoveredLocal1.
    recoveredValue28 := OrderedCollection.
    recoveredValue29 := (recoveredValue28) new.
    recoveredValue30 := recoveredValue29.
    recoveredValue31 := OSRect.
    recoveredValue32 := (self) parameterForClass: (recoveredValue31).
    (recoveredValue30) add: (recoveredValue32).
    recoveredValue33 := recoveredValue29.
    recoveredValue34 := OSIOleInPlaceUIWindow.
    recoveredValue35 := (self) parameterForClass: (recoveredValue34).
    (recoveredValue33) add: (recoveredValue35).
    recoveredValue36 := recoveredValue29.
    recoveredValue37 := (self) parameterForType: ('bool').
    (recoveredValue36) add: (recoveredValue37).
    recoveredValue38 := (recoveredValue29) asArray.
    (recoveredValue27) add: (recoveredValue38).
    recoveredValue39 := recoveredLocal2.
    (recoveredValue39) add: ('uint32').
    recoveredValue40 := recoveredLocal1.
    recoveredValue41 := OrderedCollection.
    recoveredValue42 := (recoveredValue41) new.
    recoveredValue43 := recoveredValue42.
    recoveredValue44 := (self) parameterForType: ('bool').
    (recoveredValue43) add: (recoveredValue44).
    recoveredValue45 := (recoveredValue42) asArray.
    (recoveredValue40) add: (recoveredValue45).
    recoveredValue46 := Array.
    recoveredValue47 := recoveredLocal2.
    recoveredValue48 := recoveredLocal1.
    recoveredValue49 := (recoveredValue46) with: (recoveredValue47) with: (recoveredValue48).
    ^recoveredValue49
! !

