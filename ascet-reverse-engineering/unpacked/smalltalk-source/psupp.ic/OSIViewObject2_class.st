"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20026d5c; bytecode file offset 0x17a600"
!OSIViewObject2 class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'draw:lindex:pvAspect:ptd:hdcTargetDev:hdcDraw:lprcBounds:lprcWBounds:pfnContinue:dwContinue:' 'getColorSet:lindex:pvAspect:ptd:hicTargetDev:ppColorSet:' 'freeze:lindex:pvAspect:pdwFreeze:' 'unfreeze:' 'setAdvise:advf:pAdvSink:' 'getAdvise:pAdvf:ppAdvSink:' 'getExtent:lindex:ptd:lpsizel:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (10).
    GetExtent := recoveredValue0.
    ^self
! !

"psupp.ic method 0x2003b79c; bytecode file offset 0x18f060"
!OSIViewObject2 class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
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
    recoveredValue11 := (self) parameterForType: ('int32').
    (recoveredValue10) add: (recoveredValue11).
    recoveredValue12 := recoveredValue7.
    recoveredValue13 := OSDvtargetdevice.
    recoveredValue14 := (self) parameterForClass: (recoveredValue13).
    (recoveredValue12) add: (recoveredValue14).
    recoveredValue15 := recoveredValue7.
    recoveredValue16 := OSSize.
    recoveredValue17 := (self) parameterForClass: (recoveredValue16).
    (recoveredValue15) add: (recoveredValue17).
    recoveredValue18 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue18).
    recoveredValue19 := Array.
    recoveredValue20 := recoveredLocal2.
    recoveredValue21 := recoveredLocal1.
    recoveredValue22 := (recoveredValue19) with: (recoveredValue20) with: (recoveredValue21).
    ^recoveredValue22
! !

