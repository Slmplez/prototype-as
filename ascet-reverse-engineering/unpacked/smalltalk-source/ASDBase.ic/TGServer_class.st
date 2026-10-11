"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200075b0; bytecode file offset 0x908be4"
!TGServer class methodsFor: 'recovered'!
fileName
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20012960; bytecode file offset 0x912098"
!TGServer class methodsFor: 'recovered'!
getDeviceClass
    | recoveredValue0 |
    recoveredValue0 := SGSimMeasureDevice32DLL.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2019d124; bytecode file offset 0xa99a18"
!TGServer class methodsFor: 'recovered'!
closeDll
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) fileName.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := PlatformLibrary.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue1) closeDllNamed: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) asString.
    recoveredValue7 := ('Failed to unload Dll ') , (recoveredValue6).
    (self) runtimeAssert: (recoveredValue4) additionalInfo: (recoveredValue7).
    ^self
! !

