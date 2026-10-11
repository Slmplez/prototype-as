"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2003c7e4; bytecode file offset 0x1900ac"
!OSIOleInPlaceSite class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'getWindow:' 'contextSensitiveHelp:' 'canInPlaceActivate' 'onInPlaceActivate' 'onUIActivate' 'getWindowContext:ppDoc:lprcPosRect:lprcClipRect:lpFrameInfo:' 'scroll:' 'onUIDeactivate:' 'onInPlaceDeactivate' 'discardUndoState' 'deactivateAndUndo' 'onPosRectChange:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (6).
    CanInPlaceActivate := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (14).
    DeactivateAndUndo := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (13).
    DiscardUndoState := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (9).
    GetWindowContext := recoveredValue3.
    recoveredValue4 := (self) callOutPlatformFunctionAt: (7).
    OnInPlaceActivate := recoveredValue4.
    recoveredValue5 := (self) callOutPlatformFunctionAt: (12).
    OnInPlaceDeactivate := recoveredValue5.
    recoveredValue6 := (self) callOutPlatformFunctionAt: (15).
    OnPosRectChange := recoveredValue6.
    recoveredValue7 := (self) callOutPlatformFunctionAt: (8).
    OnUIActivate := recoveredValue7.
    recoveredValue8 := (self) callOutPlatformFunctionAt: (11).
    OnUIDeactivate := recoveredValue8.
    recoveredValue9 := (self) callOutPlatformFunctionAt: (10).
    Scroll := recoveredValue9.
    ^self
! !

"psupp.ic method 0x2004a314; bytecode file offset 0x19dbec"
!OSIOleInPlaceSite class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    (recoveredValue4) add: ('uint32').
    recoveredValue5 := recoveredLocal1.
    (recoveredValue5) add: (#()).
    recoveredValue6 := recoveredLocal2.
    (recoveredValue6) add: ('uint32').
    recoveredValue7 := recoveredLocal1.
    (recoveredValue7) add: (#()).
    recoveredValue8 := recoveredLocal2.
    (recoveredValue8) add: ('uint32').
    recoveredValue9 := recoveredLocal1.
    (recoveredValue9) add: (#()).
    recoveredValue10 := recoveredLocal2.
    (recoveredValue10) add: ('uint32').
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := OrderedCollection.
    recoveredValue13 := (recoveredValue12) new.
    recoveredValue14 := recoveredValue13.
    recoveredValue15 := OSUInt8.
    recoveredValue16 := (self) parameterForClass: (recoveredValue15).
    (recoveredValue14) add: (recoveredValue16).
    recoveredValue17 := recoveredValue13.
    recoveredValue18 := OSUInt8.
    recoveredValue19 := (self) parameterForClass: (recoveredValue18).
    (recoveredValue17) add: (recoveredValue19).
    recoveredValue20 := recoveredValue13.
    recoveredValue21 := OSRect.
    recoveredValue22 := (self) parameterForClass: (recoveredValue21).
    (recoveredValue20) add: (recoveredValue22).
    recoveredValue23 := recoveredValue13.
    recoveredValue24 := OSRect.
    recoveredValue25 := (self) parameterForClass: (recoveredValue24).
    (recoveredValue23) add: (recoveredValue25).
    recoveredValue26 := recoveredValue13.
    recoveredValue27 := OSOleinplaceframeinfo.
    recoveredValue28 := (self) parameterForClass: (recoveredValue27).
    (recoveredValue26) add: (recoveredValue28).
    recoveredValue29 := (recoveredValue13) asArray.
    (recoveredValue11) add: (recoveredValue29).
    recoveredValue30 := recoveredLocal2.
    (recoveredValue30) add: ('uint32').
    recoveredValue31 := recoveredLocal1.
    recoveredValue32 := OrderedCollection.
    recoveredValue33 := (recoveredValue32) new.
    recoveredValue34 := recoveredValue33.
    recoveredValue35 := OSSize.
    recoveredValue36 := (self) parameterForType: ('stack') class: (recoveredValue35).
    (recoveredValue34) add: (recoveredValue36).
    recoveredValue37 := (recoveredValue33) asArray.
    (recoveredValue31) add: (recoveredValue37).
    recoveredValue38 := recoveredLocal2.
    (recoveredValue38) add: ('uint32').
    recoveredValue39 := recoveredLocal1.
    recoveredValue40 := OrderedCollection.
    recoveredValue41 := (recoveredValue40) new.
    recoveredValue42 := recoveredValue41.
    recoveredValue43 := (self) parameterForType: ('bool').
    (recoveredValue42) add: (recoveredValue43).
    recoveredValue44 := (recoveredValue41) asArray.
    (recoveredValue39) add: (recoveredValue44).
    recoveredValue45 := recoveredLocal2.
    (recoveredValue45) add: ('uint32').
    recoveredValue46 := recoveredLocal1.
    (recoveredValue46) add: (#()).
    recoveredValue47 := recoveredLocal2.
    (recoveredValue47) add: ('uint32').
    recoveredValue48 := recoveredLocal1.
    (recoveredValue48) add: (#()).
    recoveredValue49 := recoveredLocal2.
    (recoveredValue49) add: ('uint32').
    recoveredValue50 := recoveredLocal1.
    (recoveredValue50) add: (#()).
    recoveredValue51 := recoveredLocal2.
    (recoveredValue51) add: ('uint32').
    recoveredValue52 := recoveredLocal1.
    recoveredValue53 := OrderedCollection.
    recoveredValue54 := (recoveredValue53) new.
    recoveredValue55 := recoveredValue54.
    recoveredValue56 := OSRect.
    recoveredValue57 := (self) parameterForClass: (recoveredValue56).
    (recoveredValue55) add: (recoveredValue57).
    recoveredValue58 := (recoveredValue54) asArray.
    (recoveredValue52) add: (recoveredValue58).
    recoveredValue59 := Array.
    recoveredValue60 := recoveredLocal2.
    recoveredValue61 := recoveredLocal1.
    recoveredValue62 := (recoveredValue59) with: (recoveredValue60) with: (recoveredValue61).
    ^recoveredValue62
! !

