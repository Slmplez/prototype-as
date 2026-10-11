"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20026dac; bytecode file offset 0x17a650"
!OSIPropertyPage2 class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'setPageSite:' 'activate:lprc:bModal:' 'deactivate' 'getPageInfo:' 'setObjects:ppunk:' 'show:' 'move:' 'isPageDirty' 'apply' 'help:' 'translateAccelerator:' 'editProperty:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (15).
    EditProperty := recoveredValue0.
    ^self
! !

"psupp.ic method 0x200352f8; bytecode file offset 0x188bb0"
!OSIPropertyPage2 class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
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
    recoveredValue9 := (self) parameterForType: ('int32').
    (recoveredValue8) add: (recoveredValue9).
    recoveredValue10 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue10).
    recoveredValue11 := Array.
    recoveredValue12 := recoveredLocal2.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (recoveredValue11) with: (recoveredValue12) with: (recoveredValue13).
    ^recoveredValue14
! !

