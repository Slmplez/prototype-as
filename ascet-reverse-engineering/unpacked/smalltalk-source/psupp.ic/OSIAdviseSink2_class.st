"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20026d34; bytecode file offset 0x17a5d8"
!OSIAdviseSink2 class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'onDataChange:pStgmed:' 'onViewChange:lindex:' 'onRename:' 'onSave' 'onClose' 'onLinkSrcChange:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (9).
    OnLinkSrcChange := recoveredValue0.
    ^self
! !

"psupp.ic method 0x200351c8; bytecode file offset 0x188b5c"
!OSIAdviseSink2 class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
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
    recoveredValue9 := OSIMoniker.
    recoveredValue10 := (self) parameterForClass: (recoveredValue9).
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue11).
    recoveredValue12 := Array.
    recoveredValue13 := recoveredLocal2.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := (recoveredValue12) with: (recoveredValue13) with: (recoveredValue14).
    ^recoveredValue15
! !

