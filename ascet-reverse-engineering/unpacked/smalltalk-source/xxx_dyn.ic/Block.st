"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20004780; bytecode file offset 0x6592c"
!Block methodsFor: 'recovered'!
sstIsDeferredContent
    ^true
! !

"xxx_dyn.ic method 0x20008bac; bytecode file offset 0x69c74"
!Block methodsFor: 'recovered'!
whenTimeoutInMinutes: recoveredArg1 do: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) * (60).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) whenTimeoutInSeconds: (recoveredValue1) do: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20009570; bytecode file offset 0x6a638"
!Block methodsFor: 'recovered'!
whenTimeoutInSeconds: recoveredArg1 do: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) * (1000).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) whenTimeoutInMilliseconds: (recoveredValue1) do: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20024550; bytecode file offset 0x85644"
!Block methodsFor: 'recovered'!
whenTimeoutInMilliseconds: recoveredArg1 do: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := Object.
    (recoveredValue0) sstToBeFixed.
    recoveredValue1 := Processor.
    recoveredValue2 := (recoveredValue1) enableAsyncMessages: (false).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := Processor.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) enableAsyncMessages: (recoveredValue4).
    recoveredValue5 := SstTimeout.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue5) inMilliseconds: (recoveredValue6).
    recoveredLocal2 := recoveredValue7.
    recoveredValue8 := [
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 |
    recoveredBlock32Value0 := [
    | recoveredBlock32Block38Value0 recoveredBlock32Block38Value1 |
    recoveredBlock32Block38Value0 := recoveredLocal2.
    (recoveredBlock32Block38Value0) register.
    recoveredBlock32Block38Value1 := (self) value.
    recoveredBlock32Block38Value1
].
    recoveredBlock32Value1 := [
    | recoveredBlock32Block52Value0 recoveredBlock32Block52Value1 recoveredBlock32Block52Value2 recoveredBlock32Block52Value3 |
    recoveredBlock32Block52Value0 := recoveredLocal2.
    (recoveredBlock32Block52Value0) deregister.
    recoveredBlock32Block52Value1 := Processor.
    recoveredBlock32Block52Value2 := recoveredLocal1.
    recoveredBlock32Block52Value3 := (recoveredBlock32Block52Value1) enableAsyncMessages: (recoveredBlock32Block52Value2).
    recoveredBlock32Block52Value3
].
    recoveredBlock32Value2 := (recoveredBlock32Value0) atEndOrWhenExceptionDo: (recoveredBlock32Value1).
    recoveredBlock32Value2
].
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := (recoveredValue9) exception.
    recoveredValue11 := recoveredArg2.
    recoveredValue12 := (recoveredValue8) when: (recoveredValue10) do: (recoveredValue11).
    ^recoveredValue12
! !

