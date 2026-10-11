"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20017e80; bytecode file offset 0x78f6c"
!SstWSTransportDeterminationHandler methodsFor: 'recovered'!
buildNameFor: recoveredArg1 scheme: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := (recoveredValue0) onLocalizedString.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) nextPutAll: ('ws').
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) first.
    recoveredValue7 := (recoveredValue6) asUppercase.
    (recoveredValue4) nextPut: (recoveredValue7).
    recoveredValue8 := recoveredValue2.
    recoveredValue9 := recoveredArg2.
    recoveredValue10 := recoveredArg2.
    recoveredValue11 := (recoveredValue10) size.
    recoveredValue12 := (recoveredValue9) copyFrom: (2) to: (recoveredValue11).
    (recoveredValue8) nextPutAll: (recoveredValue12).
    recoveredValue13 := recoveredArg1.
    (recoveredValue2) nextPutAll: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := (recoveredValue14) contents.
    ^recoveredValue15
! !

"xxx_dyn.ic method 0x20019dbc; bytecode file offset 0x7aeac"
!SstWSTransportDeterminationHandler methodsFor: 'recovered'!
invoke: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := WSServiceLocation.
    recoveredValue2 := (recoveredValue0) propertyNamed: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) scheme.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) buildNameFor: ('ClientRequestHandler') scheme: (recoveredValue6).
    recoveredValue8 := WSTransportRequestIdentifier.
    (recoveredValue5) addProperty: (recoveredValue7) named: (recoveredValue8).
    recoveredValue9 := recoveredValue4.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (self) buildNameFor: ('ClientResponseHandler') scheme: (recoveredValue10).
    recoveredValue12 := WSTransportResponseIdentifier.
    (recoveredValue9) addProperty: (recoveredValue11) named: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (self) buildNameFor: ('ClientFaultHandler') scheme: (recoveredValue13).
    recoveredValue15 := WSTransportFaultIdentifier.
    (recoveredValue4) addProperty: (recoveredValue14) named: (recoveredValue15).
    ^self
! !

