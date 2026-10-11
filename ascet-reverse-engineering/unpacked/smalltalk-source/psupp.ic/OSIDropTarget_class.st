"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200328fc; bytecode file offset 0x1861ac"
!OSIDropTarget class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'dragEnter:grfKeyState:pt:pdwEffect:' 'dragOver:pt:pdwEffect:' 'dragLeave' 'drop:grfKeyState:pt:pdwEffect:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (4).
    DragEnter := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (6).
    DragLeave := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (5).
    DragOver := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (7).
    Drop := recoveredValue3.
    ^self
! !

"psupp.ic method 0x20047dcc; bytecode file offset 0x19b69c"
!OSIDropTarget class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 |
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
    recoveredValue9 := OSIDataObject.
    recoveredValue10 := (self) parameterForClass: (recoveredValue9).
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue7.
    recoveredValue12 := (self) parameterForType: ('uint32').
    (recoveredValue11) add: (recoveredValue12).
    recoveredValue13 := recoveredValue7.
    recoveredValue14 := OSPointl.
    recoveredValue15 := (self) parameterForType: ('stack') class: (recoveredValue14).
    (recoveredValue13) add: (recoveredValue15).
    recoveredValue16 := recoveredValue7.
    recoveredValue17 := OSUInt8.
    recoveredValue18 := (self) parameterForClass: (recoveredValue17).
    (recoveredValue16) add: (recoveredValue18).
    recoveredValue19 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue19).
    recoveredValue20 := recoveredLocal2.
    (recoveredValue20) add: ('uint32').
    recoveredValue21 := recoveredLocal1.
    recoveredValue22 := OrderedCollection.
    recoveredValue23 := (recoveredValue22) new.
    recoveredValue24 := recoveredValue23.
    recoveredValue25 := (self) parameterForType: ('uint32').
    (recoveredValue24) add: (recoveredValue25).
    recoveredValue26 := recoveredValue23.
    recoveredValue27 := OSPointl.
    recoveredValue28 := (self) parameterForType: ('stack') class: (recoveredValue27).
    (recoveredValue26) add: (recoveredValue28).
    recoveredValue29 := recoveredValue23.
    recoveredValue30 := OSUInt8.
    recoveredValue31 := (self) parameterForClass: (recoveredValue30).
    (recoveredValue29) add: (recoveredValue31).
    recoveredValue32 := (recoveredValue23) asArray.
    (recoveredValue21) add: (recoveredValue32).
    recoveredValue33 := recoveredLocal2.
    (recoveredValue33) add: ('uint32').
    recoveredValue34 := recoveredLocal1.
    (recoveredValue34) add: (#()).
    recoveredValue35 := recoveredLocal2.
    (recoveredValue35) add: ('uint32').
    recoveredValue36 := recoveredLocal1.
    recoveredValue37 := OrderedCollection.
    recoveredValue38 := (recoveredValue37) new.
    recoveredValue39 := recoveredValue38.
    recoveredValue40 := OSIDataObject.
    recoveredValue41 := (self) parameterForClass: (recoveredValue40).
    (recoveredValue39) add: (recoveredValue41).
    recoveredValue42 := recoveredValue38.
    recoveredValue43 := (self) parameterForType: ('uint32').
    (recoveredValue42) add: (recoveredValue43).
    recoveredValue44 := recoveredValue38.
    recoveredValue45 := OSPointl.
    recoveredValue46 := (self) parameterForType: ('stack') class: (recoveredValue45).
    (recoveredValue44) add: (recoveredValue46).
    recoveredValue47 := recoveredValue38.
    recoveredValue48 := OSUInt8.
    recoveredValue49 := (self) parameterForClass: (recoveredValue48).
    (recoveredValue47) add: (recoveredValue49).
    recoveredValue50 := (recoveredValue38) asArray.
    (recoveredValue36) add: (recoveredValue50).
    recoveredValue51 := Array.
    recoveredValue52 := recoveredLocal2.
    recoveredValue53 := recoveredLocal1.
    recoveredValue54 := (recoveredValue51) with: (recoveredValue52) with: (recoveredValue53).
    ^recoveredValue54
! !

