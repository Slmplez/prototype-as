"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20057044; bytecode file offset 0x953900"
!OSHmodule class methodsFor: 'recovered'!
getModuleFileName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getModuleHandle: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) moduleFileName.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005e85c; bytecode file offset 0x95b428"
!OSHmodule class methodsFor: 'recovered'!
driverFileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('DISPLAY') asPSZ.
    recoveredValue1 := (self) getModuleFileName: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201ab2ec; bytecode file offset 0xaa7bc0"
!OSHmodule class methodsFor: 'recovered'!
getModuleUsage: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := PlatformFunction.
    recoveredValue1 := (recoveredValue0) callingConvention: ('c') function: ('GetModuleUsageA') library: ('kernel32.dll') parameterTypes: (#('uint16')) returnType: ('uint32').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) callWith: (recoveredValue3).
    ^recoveredValue4
! !

