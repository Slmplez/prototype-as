"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001808c; bytecode file offset 0x92209c"
!AbtFormInputChecker class methodsFor: 'recovered'!
IS_errorMessage
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (EsString); getSelector: ('errorMessage'); setSelector: ('errorMessage:'); changeSymbol: ('errorMessage'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001982c; bytecode file offset 0x92209c"
!AbtFormInputChecker class methodsFor: 'recovered'!
IS_checkFailed
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('checkFailed'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a510; bytecode file offset 0x92209c"
!AbtFormInputChecker class methodsFor: 'recovered'!
IS_errorView
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtBasicView); getSelector: ('errorView'); setSelector: ('errorView:'); changeSymbol: ('errorView'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20021488; bytecode file offset 0x92209c"
!AbtFormInputChecker class methodsFor: 'recovered'!
IS_checkSucceeded
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('checkSucceeded'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002189c; bytecode file offset 0x92209c"
!AbtFormInputChecker class methodsFor: 'recovered'!
IS_verificationRoot
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtPart); getSelector: ('verificationRoot'); setSelector: ('verificationRoot:'); changeSymbol: ('verificationRoot'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20023c54; bytecode file offset 0x92209c"
!AbtFormInputChecker class methodsFor: 'recovered'!
IS_check
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('check'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024f14; bytecode file offset 0x92209c"
!AbtFormInputChecker class methodsFor: 'recovered'!
IS_showErrorToUser
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('showErrorToUser'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20339ec0; bytecode file offset 0xc367b8"
!AbtFormInputChecker class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_verificationRoot.
    (recoveredValue2) featureNamed: ('verificationRoot') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_errorView.
    (recoveredValue4) featureNamed: ('errorView') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_errorMessage.
    (recoveredValue6) featureNamed: ('errorMessage') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_checkSucceeded.
    (recoveredValue8) featureNamed: ('checkSucceeded') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_checkFailed.
    (recoveredValue10) featureNamed: ('checkFailed') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_check.
    (recoveredValue12) featureNamed: ('check') put: (recoveredValue13).
    recoveredValue14 := (self) IS_showErrorToUser.
    recoveredValue15 := (recoveredValue1) featureNamed: ('showErrorToUser') put: (recoveredValue14).
    ^recoveredValue15
! !

