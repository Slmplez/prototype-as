"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000030; bytecode file offset 0x6147c"
!SstMessageAssembler methodsFor: 'recovered'!
shutDown
    ^self
! !

"xxx_dyn.ic method 0x20000158; bytecode file offset 0x6147c"
!SstMessageAssembler methodsFor: 'recovered'!
initialize
    ^self
! !

"xxx_dyn.ic method 0x20000240; bytecode file offset 0x6147c"
!SstMessageAssembler methodsFor: 'recovered'!
startUp
    ^self
! !

"xxx_dyn.ic method 0x20000308; bytecode file offset 0x6147c"
!SstMessageAssembler methodsFor: 'recovered'!
reset
    ^self
! !

"xxx_dyn.ic method 0x20000998; bytecode file offset 0x61a84"
!SstMessageAssembler methodsFor: 'recovered'!
assembleFrom: recoveredArg1
    ^nil
! !

"xxx_dyn.ic method 0x20000bb8; bytecode file offset 0x61c7c"
!SstMessageAssembler methodsFor: 'recovered'!
disassembleSend: recoveredArg1 onto: recoveredArg2
    ^nil
! !

"xxx_dyn.ic method 0x20002750; bytecode file offset 0x63814"
!SstMessageAssembler methodsFor: 'recovered'!
clear
    transport := nil.
    ^self
! !

"xxx_dyn.ic method 0x200037cc; bytecode file offset 0x649e8"
!SstMessageAssembler methodsFor: 'recovered'!
transport
    | recoveredValue0 |
    recoveredValue0 := transport.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200045e4; bytecode file offset 0x656a8"
!SstMessageAssembler methodsFor: 'recovered'!
sstAssemblyInstrumentPackSource
    ^nil
! !

"xxx_dyn.ic method 0x20004fcc; bytecode file offset 0x660ac"
!SstMessageAssembler methodsFor: 'recovered'!
disassembleReply: recoveredArg1 onto: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) disassembleSend: (recoveredValue0) onto: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20007d9c; bytecode file offset 0x68f50"
!SstMessageAssembler methodsFor: 'recovered'!
transport: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    transport := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200098b4; bytecode file offset 0x6a9e8"
!SstMessageAssembler methodsFor: 'recovered'!
sstAdminPackMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super sstAdminPackMethods.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) sstAssemblyAdminPack.
    (recoveredValue1) add: (recoveredValue2).
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200098fc; bytecode file offset 0x6a9e8"
!SstMessageAssembler methodsFor: 'recovered'!
sstInstrumentPackMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super sstInstrumentPackMethods.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) sstAssemblyInstrumentPackSource.
    (recoveredValue1) add: (recoveredValue2).
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000a2e0; bytecode file offset 0x6b3b4"
!SstMessageAssembler methodsFor: 'recovered'!
sstInstrumentContextBindings
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super sstInstrumentContextBindings.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('assembler') put: (self).
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20019990; bytecode file offset 0x7aa7c"
!SstMessageAssembler methodsFor: 'recovered'!
sstAssemblyAdminPack
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Smalltalk.
    recoveredValue1 := [
    ^nil
].
    recoveredValue2 := (recoveredValue0) classAt: ('SstAdminPack') ifAbsent: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) named: ('Message Assembly').
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) addInstrument: ('SstTag:Assemble Message') in: ('assembler').
    recoveredValue5 := recoveredValue3.
    (recoveredValue5) addInstrument: ('SstTag:Disassemble Reply') in: ('assembler').
    recoveredValue6 := recoveredValue3.
    (recoveredValue6) addInstrument: ('SstTag:Disassemble Send') in: ('assembler').
    ^recoveredValue3
! !

