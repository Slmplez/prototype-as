"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20001144; bytecode file offset 0x626a4"
!SstWsdlBindingSoapExtension class methodsFor: 'recovered'!
httpTransport
    ^'http://schemas.xmlsoap.org/soap/http'
! !

"xxx_dyn.ic method 0x20001180; bytecode file offset 0x626a4"
!SstWsdlBindingSoapExtension class methodsFor: 'recovered'!
rpcStyle
    ^'rpc'
! !

"xxx_dyn.ic method 0x200067d8; bytecode file offset 0x678a8"
!SstWsdlBindingSoapExtension class methodsFor: 'recovered'!
httpRpcConfiguration
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) rpcStyle.
    recoveredValue1 := (self) httpTransport.
    recoveredValue2 := (self) style: (recoveredValue0) transport: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x2000bb14; bytecode file offset 0x6cbec"
!SstWsdlBindingSoapExtension class methodsFor: 'recovered'!
style: recoveredArg1 transport: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) style: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue1) transport: (recoveredValue4).
    ^recoveredValue5
! !

