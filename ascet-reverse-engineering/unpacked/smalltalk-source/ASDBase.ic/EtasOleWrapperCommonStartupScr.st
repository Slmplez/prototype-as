"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20009020; bytecode file offset 0x908be4"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
message
    | recoveredValue0 |
    recoveredValue0 := (self) informationText.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003cd38; bytecode file offset 0x93bf94"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
getToolString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EtasGeneralDllApi.
    recoveredValue1 := (recoveredValue0) getProductDisplayName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004418c; bytecode file offset 0x9451f8"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
showProgressBar
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: (1610743814).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20044ffc; bytecode file offset 0x9451f8"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
sandClockMousePointer
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: (1610743825).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200454cc; bytecode file offset 0x9451f8"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
subHeadline
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: (1610743812).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20045b6c; bytecode file offset 0x9451f8"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
setStartupScreenIcon
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: (1610743827).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004705c; bytecode file offset 0x9451f8"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
headline
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: (1610743810).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200470ac; bytecode file offset 0x9451f8"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
progressBarValue
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: (1610743818).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004814c; bytecode file offset 0x9451f8"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
dialogType
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: (1610743808).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004817c; bytecode file offset 0x9451f8"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
informationText
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: (1610743820).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004882c; bytecode file offset 0x9451f8"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
showInformationText
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: (1610743816).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004ac64; bytecode file offset 0x947768"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
toString
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: (0).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200503e8; bytecode file offset 0x94d048"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
bringToFront
    (self) show.
    ^self
! !

"ASDBase.ic method 0x20084cc0; bytecode file offset 0x981ca4"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
messageString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) informationText: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20085380; bytecode file offset 0x981ca4"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
message: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) informationText: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20087ea0; bytecode file offset 0x984bc0"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
getVersionString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EtasGeneralDllApi.
    recoveredValue1 := (recoveredValue0) getRegKey: ('Version').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200a31d0; bytecode file offset 0x9a0b4c"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
subHeadline: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: (1610743812) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3210; bytecode file offset 0x9a0b4c"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
progressBarValue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: (1610743818) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3700; bytecode file offset 0x9a0b4c"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
showProgressBar: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: (1610743814) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a37b0; bytecode file offset 0x9a0b4c"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
dialogType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: (1610743808) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3890; bytecode file offset 0x9a0b4c"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
setStartupScreenIcon: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: (1610743827) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3c10; bytecode file offset 0x9a0b4c"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
sandClockMousePointer: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: (1610743825) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3da0; bytecode file offset 0x9a0b4c"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
informationText: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: (1610743820) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a41e0; bytecode file offset 0x9a0b4c"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
showInformationText: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: (1610743816) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a4250; bytecode file offset 0x9a0b4c"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
headline: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: (1610743810) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a5cec; bytecode file offset 0x9a25bc"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
toString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: (0) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d0c40; bytecode file offset 0x9ce734"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
dispose
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: (1610743808) withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d0d58; bytecode file offset 0x9ce734"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
addRef
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: (1610612737) withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d0e70; bytecode file offset 0x9ce734"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
close
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: (1610743824) withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d11a4; bytecode file offset 0x9ce734"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
oleRelease
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: (1610612738) withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d16e0; bytecode file offset 0x9ce734"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
getHashCode
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: (1610743810) withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d1b54; bytecode file offset 0x9ce734"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
getType
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: (1610743811) withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d1d34; bytecode file offset 0x9ce734"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
show
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: (1610743822) withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200e961c; bytecode file offset 0x9e5ee8"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
fractionComplete: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) * (100).
    recoveredValue2 := (recoveredValue1) asInteger.
    (self) progressBarValue: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2019a3d4; bytecode file offset 0xa97444"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
equals: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (1).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredLocal1 := recoveredValue1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) invoke: (1610743809) withArguments: (recoveredValue4) returnType: (true).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2019a8a4; bytecode file offset 0xa97444"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
getTypeInfoCount: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (1).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredLocal1 := recoveredValue1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) invoke: (1610678272) withArguments: (recoveredValue4) returnType: (true).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2019a9d8; bytecode file offset 0xa97444"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
show2: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (1).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredLocal1 := recoveredValue1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) invoke: (1610743823) withArguments: (recoveredValue4) returnType: (true).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201fade8; bytecode file offset 0xaf7758"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
queryInterface: recoveredArg1 ppvObj: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (2).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredLocal1 := recoveredValue1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) invoke: (1610612736) withArguments: (recoveredValue6) returnType: (true).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2022f2a0; bytecode file offset 0xb2bb78"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
open
    | recoveredValue0 recoveredValue1 |
    (self) dialogType: (2).
    recoveredValue0 := (self) getToolString.
    (self) headline: (recoveredValue0).
    recoveredValue1 := (self) getVersionString.
    (self) subHeadline: (recoveredValue1).
    (self) showInformationText: (true).
    (self) showProgressBar: (true).
    (self) sandClockMousePointer: (true).
    (self) show.
    ^self
! !

"ASDBase.ic method 0x20244f60; bytecode file offset 0xb41860"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
getTypeInfo: recoveredArg1 lcid: recoveredArg2 pptinfo: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (3).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredLocal1 := recoveredValue1.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (self) invoke: (1610678273) withArguments: (recoveredValue8) returnType: (true).
    ^recoveredValue9
! !

"ASDBase.ic method 0x202dec4c; bytecode file offset 0xbdb530"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
getIDsOfNames: recoveredArg1 rgszNames: recoveredArg2 cNames: recoveredArg3 lcid: recoveredArg4 rgdispid: recoveredArg5
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (5).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredLocal1 := recoveredValue1.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (self) invoke: (1610678274) withArguments: (recoveredValue12) returnType: (true).
    ^recoveredValue13
! !

"ASDBase.ic method 0x203800a8; bytecode file offset 0xc7c9e0"
!EtasOleWrapperCommonStartupScr methodsFor: 'recovered'!
invoke: recoveredArg1 riid: recoveredArg2 lcid: recoveredArg3 wFlags: recoveredArg4 pdispparams: recoveredArg5 pvarResult: recoveredArg6 pexcepinfo: recoveredArg7 puArgErr: recoveredArg8
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (8).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := recoveredArg6.
    (recoveredValue12) at: (6) put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := recoveredArg7.
    (recoveredValue14) at: (7) put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := recoveredArg8.
    (recoveredValue16) at: (8) put: (recoveredValue17).
    recoveredLocal1 := recoveredValue1.
    recoveredValue18 := recoveredLocal1.
    recoveredValue19 := (self) invoke: (1610678275) withArguments: (recoveredValue18) returnType: (true).
    ^recoveredValue19
! !

