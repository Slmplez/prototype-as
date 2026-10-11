"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003cf28; bytecode file offset 0x93bf94"
!EtasUserInterfaceSupportApp class methodsFor: 'recovered'!
exiting
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGUserInterfaceSettings.
    recoveredValue1 := (recoveredValue0) freeResources.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200f1e88; bytecode file offset 0x9ee764"
!EtasUserInterfaceSupportApp class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Kli') == ('NLSSupport').
    recoveredValue1 := SGUserInterfaceSettings.
    (recoveredValue1) initGlobals.
    ^self
! !

