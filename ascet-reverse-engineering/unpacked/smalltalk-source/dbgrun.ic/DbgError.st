"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"dbgrun.ic method 0x2000059c; bytecode file offset 0x7b78"
!DbgError methodsFor: 'recovered'!
isDbgError
    ^true
! !

"dbgrun.ic method 0x20001194; bytecode file offset 0x8768"
!DbgError methodsFor: 'recovered'!
errorString
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) messageDictionary.
    recoveredValue2 := (self) errorCode.
    recoveredValue3 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := NlsCatDBG.
    recoveredBlock8Value1 := (recoveredBlock8Value0) indexedMsg: (2).
    ^recoveredBlock8Value1
].
    recoveredValue4 := (recoveredValue1) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

