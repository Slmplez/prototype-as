"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20065fe4; bytecode file offset 0x963428"
!ASDSCMStatus methodsFor: 'recovered'!
internalScmIconOverlayVersion
    | recoveredValue0 |
    recoveredValue0 := scmIconOverlayVersion.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200679ac; bytecode file offset 0x9646f8"
!ASDSCMStatus methodsFor: 'recovered'!
internalScmVersionConfiguration
    | recoveredValue0 |
    recoveredValue0 := scmVersionConfiguration.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006899c; bytecode file offset 0x965b90"
!ASDSCMStatus methodsFor: 'recovered'!
internalScmVersionString
    | recoveredValue0 |
    recoveredValue0 := scmVersionString.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069940; bytecode file offset 0x966bdc"
!ASDSCMStatus methodsFor: 'recovered'!
internalScmIconOverlayVersionPriority
    | recoveredValue0 |
    recoveredValue0 := scmIconOverlayVersionPriority.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a364; bytecode file offset 0x967a18"
!ASDSCMStatus methodsFor: 'recovered'!
internalScmIconOverlayConfiguration
    | recoveredValue0 |
    recoveredValue0 := scmIconOverlayConfiguration.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bb08; bytecode file offset 0x96873c"
!ASDSCMStatus methodsFor: 'recovered'!
internalScmIconOverlayConfigurationPriority
    | recoveredValue0 |
    recoveredValue0 := scmIconOverlayConfigurationPriority.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be114; bytecode file offset 0x9bb178"
!ASDSCMStatus methodsFor: 'recovered'!
internalScmIconOverlayVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    scmIconOverlayVersion := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf110; bytecode file offset 0x9bc0b4"
!ASDSCMStatus methodsFor: 'recovered'!
internalScmVersionConfiguration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    scmVersionConfiguration := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfa24; bytecode file offset 0x9bd228"
!ASDSCMStatus methodsFor: 'recovered'!
internalScmVersionString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    scmVersionString := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1058; bytecode file offset 0x9bdf14"
!ASDSCMStatus methodsFor: 'recovered'!
internalScmIconOverlayVersionPriority: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    scmIconOverlayVersionPriority := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2124; bytecode file offset 0x9beac8"
!ASDSCMStatus methodsFor: 'recovered'!
internalScmIconOverlayConfiguration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    scmIconOverlayConfiguration := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2938; bytecode file offset 0x9bf474"
!ASDSCMStatus methodsFor: 'recovered'!
internalScmIconOverlayConfigurationPriority: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    scmIconOverlayConfigurationPriority := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3194; bytecode file offset 0x9bfde0"
!ASDSCMStatus methodsFor: 'recovered'!
internalScmIsExternal: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    scmIsExternal := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2011f7e0; bytecode file offset 0xa1c0a4"
!ASDSCMStatus methodsFor: 'recovered'!
writeXMLNode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) openComplex: ('StatusData').
    recoveredValue1 := recoveredArg1.
    (self) writeXMLNodeContent: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) closeComplex.
    ^self
! !

"ASDBase.ic method 0x2016f874; bytecode file offset 0xa6c12c"
!ASDSCMStatus methodsFor: 'recovered'!
internalScmIsExternal
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := scmIsExternal.
    recoveredValue1 := [
    scmIsExternal := false.
    false
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := scmIsExternal.
    ^recoveredValue2
! !

"ASDBase.ic method 0x202499ac; bytecode file offset 0xb46274"
!ASDSCMStatus methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    recoveredValue0 := String.
    recoveredValue1 := (recoveredValue0) new.
    scmVersionString := recoveredValue1.
    recoveredValue2 := String.
    recoveredValue3 := (recoveredValue2) new.
    scmVersionConfiguration := recoveredValue3.
    scmIconOverlayVersion := 'GeneralTransparent'.
    scmIconOverlayVersionPriority := nil.
    scmIconOverlayConfiguration := 'GeneralTransparent'.
    scmIconOverlayConfigurationPriority := nil.
    scmIsExternal := false.
    ^self
! !

"ASDBase.ic method 0x20255720; bytecode file offset 0xb52000"
!ASDSCMStatus methodsFor: 'recovered'!
writeXMLNodeContent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) internalScmIconOverlayVersion.
    recoveredValue2 := (recoveredValue1) asString.
    (recoveredValue0) attr: ('IconOverlayVersion') string: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) internalScmIconOverlayVersionPriority.
    (recoveredValue3) attr: ('IconOverlayVersionPriority') nnInt: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (self) internalScmIconOverlayConfiguration.
    recoveredValue7 := (recoveredValue6) asString.
    (recoveredValue5) attr: ('IconOverlayConfiguration') string: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (self) internalScmIconOverlayConfigurationPriority.
    (recoveredValue8) attr: ('IconOverlayConfigurationPriority') nnInt: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x20406ec4; bytecode file offset 0xd037b0"
!ASDSCMStatus methodsFor: 'recovered'!
writeXML: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) openComplex: ('SCMStatus').
    recoveredValue1 := (self) internalScmVersionString.
    recoveredValue2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredArg1.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) attr: ('scmVersionString') string: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    recoveredValue3 := (self) internalScmVersionConfiguration.
    recoveredValue4 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 |
    recoveredBlock32Value0 := recoveredArg1.
    recoveredBlock32Value1 := recoveredBlock32Arg1.
    recoveredBlock32Value2 := (recoveredBlock32Value0) attr: ('scmConfigurationString') string: (recoveredBlock32Value1).
    recoveredBlock32Value2
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    recoveredValue5 := (self) internalScmIconOverlayVersionPriority.
    recoveredValue6 := [:recoveredBlock52Arg1 | 
    | recoveredBlock52Value0 recoveredBlock52Value1 recoveredBlock52Value2 |
    recoveredBlock52Value0 := recoveredArg1.
    recoveredBlock52Value1 := recoveredBlock52Arg1.
    recoveredBlock52Value2 := (recoveredBlock52Value0) attr: ('scmIconOverlayVersionPriority') nnInt: (recoveredBlock52Value1).
    recoveredBlock52Value2
].
    (recoveredValue5) ifNotNil: (recoveredValue6).
    recoveredValue7 := (self) internalScmIconOverlayConfigurationPriority.
    recoveredValue8 := [:recoveredBlock72Arg1 | 
    | recoveredBlock72Value0 recoveredBlock72Value1 recoveredBlock72Value2 |
    recoveredBlock72Value0 := recoveredArg1.
    recoveredBlock72Value1 := recoveredBlock72Arg1.
    recoveredBlock72Value2 := (recoveredBlock72Value0) attr: ('scmIconOverlayConfigurationPriority') nnInt: (recoveredBlock72Value1).
    recoveredBlock72Value2
].
    (recoveredValue7) ifNotNil: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    (recoveredValue9) closeComplex.
    ^self
! !

"ASDBase.ic method 0x20454448; bytecode file offset 0xd50d44"
!ASDSCMStatus methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) cr.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) cr.
    (recoveredValue2) nextPutAll: ('internalScmIconOverlayVersion               :').
    recoveredValue4 := (self) internalScmIconOverlayVersion.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) printOn: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredValue6.
    (recoveredValue7) cr.
    (recoveredValue6) nextPutAll: ('internalScmVersionConfiguration             :').
    recoveredValue8 := (self) internalScmVersionConfiguration.
    recoveredValue9 := recoveredArg1.
    (recoveredValue8) printOn: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := recoveredValue10.
    (recoveredValue11) cr.
    (recoveredValue10) nextPutAll: ('internalScmVersionString                    :').
    recoveredValue12 := (self) internalScmVersionString.
    recoveredValue13 := recoveredArg1.
    (recoveredValue12) printOn: (recoveredValue13).
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := recoveredValue14.
    (recoveredValue15) cr.
    (recoveredValue14) nextPutAll: ('internalScmIconOverlayVersionPriority       :').
    recoveredValue16 := (self) internalScmIconOverlayVersionPriority.
    recoveredValue17 := recoveredArg1.
    (recoveredValue16) printOn: (recoveredValue17).
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := recoveredValue18.
    (recoveredValue19) cr.
    (recoveredValue18) nextPutAll: ('internalScmIconOverlayConfiguration         :').
    recoveredValue20 := (self) internalScmIconOverlayConfiguration.
    recoveredValue21 := recoveredArg1.
    (recoveredValue20) printOn: (recoveredValue21).
    recoveredValue22 := recoveredArg1.
    recoveredValue23 := recoveredValue22.
    (recoveredValue23) cr.
    (recoveredValue22) nextPutAll: ('internalScmIconOverlayConfigurationPriority :').
    recoveredValue24 := (self) internalScmIconOverlayConfigurationPriority.
    recoveredValue25 := recoveredArg1.
    (recoveredValue24) printOn: (recoveredValue25).
    recoveredValue26 := recoveredArg1.
    recoveredValue27 := recoveredValue26.
    (recoveredValue27) cr.
    (recoveredValue26) nextPutAll: ('internalScmIsExternal                       :').
    recoveredValue28 := (self) internalScmIsExternal.
    recoveredValue29 := recoveredArg1.
    (recoveredValue28) printOn: (recoveredValue29).
    recoveredValue30 := recoveredArg1.
    (recoveredValue30) cr.
    ^self
! !

