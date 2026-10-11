"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20032a88; bytecode file offset 0x186338"
!OSIOleInPlaceObject class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'getWindow:' 'contextSensitiveHelp:' 'inPlaceDeactivate' 'uIDeactivate' 'setObjectRects:lprcClipRect:' 'reactivateAndUndo')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (6).
    InPlaceDeactivate := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (9).
    ReactivateAndUndo := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (8).
    SetObjectRects := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (7).
    UIDeactivate := recoveredValue3.
    ^self
! !

"psupp.ic method 0x2003e22c; bytecode file offset 0x191ae8"
!OSIOleInPlaceObject class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 |
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
    recoveredValue10 := OrderedCollection.
    recoveredValue11 := (recoveredValue10) new.
    recoveredValue12 := recoveredValue11.
    recoveredValue13 := OSRect.
    recoveredValue14 := (self) parameterForClass: (recoveredValue13).
    (recoveredValue12) add: (recoveredValue14).
    recoveredValue15 := recoveredValue11.
    recoveredValue16 := OSRect.
    recoveredValue17 := (self) parameterForClass: (recoveredValue16).
    (recoveredValue15) add: (recoveredValue17).
    recoveredValue18 := (recoveredValue11) asArray.
    (recoveredValue9) add: (recoveredValue18).
    recoveredValue19 := recoveredLocal2.
    (recoveredValue19) add: ('uint32').
    recoveredValue20 := recoveredLocal1.
    (recoveredValue20) add: (#()).
    recoveredValue21 := Array.
    recoveredValue22 := recoveredLocal2.
    recoveredValue23 := recoveredLocal1.
    recoveredValue24 := (recoveredValue21) with: (recoveredValue22) with: (recoveredValue23).
    ^recoveredValue24
! !

