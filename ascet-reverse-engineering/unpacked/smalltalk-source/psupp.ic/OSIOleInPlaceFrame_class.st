"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20036aa0; bytecode file offset 0x18a358"
!OSIOleInPlaceFrame class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'getWindow:' 'contextSensitiveHelp:' 'getBorder:' 'requestBorderSpace:' 'setBorderSpace:' 'setActiveObject:pszObjName:' 'insertMenus:lpMenuWidths:' 'setMenu:holemenu:hwndActiveObject:' 'removeMenus:' 'setStatusText:' 'enableModeless:' 'translateAccelerator:wID:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (14).
    EnableModeless := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (10).
    InsertMenus := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (12).
    RemoveMenus := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (11).
    SetMenu := recoveredValue3.
    recoveredValue4 := (self) callOutPlatformFunctionAt: (13).
    SetStatusText := recoveredValue4.
    recoveredValue5 := (self) callOutPlatformFunctionAt: (15).
    TranslateAccelerator := recoveredValue5.
    ^self
! !

"psupp.ic method 0x20049b44; bytecode file offset 0x19d424"
!OSIOleInPlaceFrame class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 |
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
    recoveredValue9 := OSHmenu.
    recoveredValue10 := (self) parameterForType: ('immediate') class: (recoveredValue9).
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue7.
    recoveredValue12 := OSOlemenugroupwidths.
    recoveredValue13 := (self) parameterForClass: (recoveredValue12).
    (recoveredValue11) add: (recoveredValue13).
    recoveredValue14 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue14).
    recoveredValue15 := recoveredLocal2.
    (recoveredValue15) add: ('uint32').
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := OrderedCollection.
    recoveredValue18 := (recoveredValue17) new.
    recoveredValue19 := recoveredValue18.
    recoveredValue20 := OSHmenu.
    recoveredValue21 := (self) parameterForType: ('immediate') class: (recoveredValue20).
    (recoveredValue19) add: (recoveredValue21).
    recoveredValue22 := recoveredValue18.
    recoveredValue23 := OSHolemenu.
    recoveredValue24 := (self) parameterForType: ('immediate') class: (recoveredValue23).
    (recoveredValue22) add: (recoveredValue24).
    recoveredValue25 := recoveredValue18.
    recoveredValue26 := OSHwnd.
    recoveredValue27 := (self) parameterForType: ('immediate') class: (recoveredValue26).
    (recoveredValue25) add: (recoveredValue27).
    recoveredValue28 := (recoveredValue18) asArray.
    (recoveredValue16) add: (recoveredValue28).
    recoveredValue29 := recoveredLocal2.
    (recoveredValue29) add: ('uint32').
    recoveredValue30 := recoveredLocal1.
    recoveredValue31 := OrderedCollection.
    recoveredValue32 := (recoveredValue31) new.
    recoveredValue33 := recoveredValue32.
    recoveredValue34 := OSHmenu.
    recoveredValue35 := (self) parameterForType: ('immediate') class: (recoveredValue34).
    (recoveredValue33) add: (recoveredValue35).
    recoveredValue36 := (recoveredValue32) asArray.
    (recoveredValue30) add: (recoveredValue36).
    recoveredValue37 := recoveredLocal2.
    (recoveredValue37) add: ('uint32').
    recoveredValue38 := recoveredLocal1.
    recoveredValue39 := OrderedCollection.
    recoveredValue40 := (recoveredValue39) new.
    recoveredValue41 := recoveredValue40.
    recoveredValue42 := OSOleStringZ.
    recoveredValue43 := (self) parameterForClass: (recoveredValue42).
    (recoveredValue41) add: (recoveredValue43).
    recoveredValue44 := (recoveredValue40) asArray.
    (recoveredValue38) add: (recoveredValue44).
    recoveredValue45 := recoveredLocal2.
    (recoveredValue45) add: ('uint32').
    recoveredValue46 := recoveredLocal1.
    recoveredValue47 := OrderedCollection.
    recoveredValue48 := (recoveredValue47) new.
    recoveredValue49 := recoveredValue48.
    recoveredValue50 := (self) parameterForType: ('bool').
    (recoveredValue49) add: (recoveredValue50).
    recoveredValue51 := (recoveredValue48) asArray.
    (recoveredValue46) add: (recoveredValue51).
    recoveredValue52 := recoveredLocal2.
    (recoveredValue52) add: ('uint32').
    recoveredValue53 := recoveredLocal1.
    recoveredValue54 := OrderedCollection.
    recoveredValue55 := (recoveredValue54) new.
    recoveredValue56 := recoveredValue55.
    recoveredValue57 := OSMsg.
    recoveredValue58 := (self) parameterForClass: (recoveredValue57).
    (recoveredValue56) add: (recoveredValue58).
    recoveredValue59 := recoveredValue55.
    recoveredValue60 := (self) parameterForType: ('uint16').
    (recoveredValue59) add: (recoveredValue60).
    recoveredValue61 := (recoveredValue55) asArray.
    (recoveredValue53) add: (recoveredValue61).
    recoveredValue62 := Array.
    recoveredValue63 := recoveredLocal2.
    recoveredValue64 := recoveredLocal1.
    recoveredValue65 := (recoveredValue62) with: (recoveredValue63) with: (recoveredValue64).
    ^recoveredValue65
! !

