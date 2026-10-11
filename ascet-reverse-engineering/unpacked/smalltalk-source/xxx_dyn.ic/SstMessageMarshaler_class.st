"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000d40; bytecode file offset 0x6209c"
!SstMessageMarshaler class methodsFor: 'recovered'!
configurationClass
    | recoveredValue0 |
    recoveredValue0 := SstMarshalingConfiguration.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20002dbc; bytecode file offset 0x64108"
!SstMessageMarshaler class methodsFor: 'recovered'!
for: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) handler: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20003670; bytecode file offset 0x64740"
!SstMessageMarshaler class methodsFor: 'recovered'!
defaultConfiguration
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) configurationClass.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) marshalerClass: (self).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20005568; bytecode file offset 0x66a34"
!SstMessageMarshaler class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

