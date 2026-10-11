"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2020982c; bytecode file offset 0xb06104"
!ASDGeneralPortMethodContainer methodsFor: 'recovered'!
doVisualInfoWidgetDirectAccess: recoveredArg1 callData: recoveredArg2 resourceManager: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := (self) method.
    recoveredValue1 := (recoveredValue0) visualCallBackImage.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) method.
    recoveredValue3 := (recoveredValue2) visualCallBackStringForOutline.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := (self) iconForNodeResourceManager: (recoveredValue6).
    (recoveredValue5) icon: (recoveredValue7).
    recoveredValue8 := RBRenderableBitmapString.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := recoveredArg3.
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := (recoveredValue10) returnIconWithName: (recoveredValue11).
    recoveredValue13 := (recoveredValue8) createOnString: (recoveredValue9) image: (recoveredValue12).
    (recoveredValue4) label: (recoveredValue13).
    ^self
! !

