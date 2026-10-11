"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20053688; bytecode file offset 0x9505d0"
!SGLogicSMRT class methodsFor: 'recovered'!
readMessagesOfSubsystem: recoveredArg1
    (self) loaded.
    ^self
! !

"ASDBase.ic method 0x205546d4; bytecode file offset 0xe51080"
!SGLogicSMRT class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 |
    recoveredValue0 := SGCgErrorHandler.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('WSm10') put: ('transition startPin has no connection: transition will be ignored').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('WSm11') put: ('transition endPin has no connection: transition  will be ignored').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) at: ('WSm12') put: ('incomplete state to state transition; missing transition segments leaving junction; all entering segments will be ignored').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) at: ('WSm13') put: ('incomplete state to state transition; missing transition segments entering junction; all leaving segments will be ignored').
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) at: ('MSm14') put: ('transition may not start and end in a junction; transition will be ignored').
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) at: ('WSm15') put: ('%1 overlaps with other %2').
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) at: ('WSm40') put: ('unreachable %1').
    recoveredValue8 := recoveredValue0.
    (recoveredValue8) at: ('WSm60') put: ('STATIC action at %1 is ineffective with %2').
    recoveredValue9 := recoveredValue0.
    (recoveredValue9) at: ('WSm70') put: ('condition makes other transitions at %1 unreachable').
    recoveredValue10 := recoveredValue0.
    (recoveredValue10) at: ('WSm80') put: ('%1 not defined').
    recoveredValue11 := recoveredValue0.
    (recoveredValue11) at: ('WSm81') put: ('Value of sm variable is not specified at this point').
    recoveredValue12 := recoveredValue0.
    (recoveredValue12) at: ('WSm95') put: ('specified state reset method body is being discarded - possibly unintended loss of code').
    recoveredValue13 := recoveredValue0.
    (recoveredValue13) at: ('WSm96') put: ('potential call the state reset method during a transition').
    recoveredValue14 := recoveredValue0.
    (recoveredValue14) at: ('YSm20') put: ('%1 needs start state').
    recoveredValue15 := recoveredValue0.
    (recoveredValue15) at: ('YSm21') put: ('%1 may not have multiple start states').
    recoveredValue16 := recoveredValue0.
    (recoveredValue16) at: ('YSm30') put: ('%1 must contain (concrete) states').
    recoveredValue17 := recoveredValue0.
    (recoveredValue17) at: ('YSm50') put: ('multiple prio %1 for trigger "%2" in %3').
    recoveredValue18 := recoveredValue0.
    (recoveredValue18) at: ('YSm60') put: ('missing trigger specification; each state to state transition path needs to specify a trigger').
    recoveredValue19 := recoveredValue0.
    (recoveredValue19) at: ('YSm61') put: ('multiple trigger specification; each single state to state transition path must not specify more than one trigger').
    recoveredValue20 := recoveredValue0.
    (recoveredValue20) at: ('YSm62') put: ('junction transition cycle is not allowed').
    recoveredValue21 := recoveredValue0.
    (recoveredValue21) at: ('YSm70') put: ('specification error: no static action may be specified for transition segments entering junctions').
    recoveredValue22 := recoveredValue0.
    (recoveredValue22) at: ('YSm71') put: ('specification error: name of state "%1" must be unique with respect to element/method names, but %2 already exists').
    recoveredValue23 := recoveredValue0.
    (recoveredValue23) at: ('YSm72') put: ('higher priority transitions do not exit %1, but this transition does.').
    recoveredValue24 := recoveredValue0.
    (recoveredValue24) at: ('YSm73') put: ('multiple states with identical label "%1"').
    recoveredValue25 := recoveredValue0.
    (recoveredValue25) at: ('YSm80') put: ('expression expected for condition').
    recoveredValue26 := recoveredValue0.
    (recoveredValue26) at: ('YSm90') put: ('transitions into a closed hierarchy must not be followed by a transition out of a closed hierarchy').
    recoveredValue27 := recoveredValue0.
    (recoveredValue27) at: ('YSm95') put: ('User-specified returns are not allowed').
    recoveredValue28 := recoveredValue0.
    (recoveredValue28) at: ('MSm95') put: ('Return values are not allowed for state reset methods').
    recoveredValue29 := recoveredValue0.
    (recoveredValue29) at: ('MSm96') put: ('It is not allowed to call the state reset method during a transition').
    recoveredValue30 := recoveredValue0.
    (recoveredValue30) at: ('ISm95') put: ('state reset method has no specified body - no code is lost').
    ^self
! !

