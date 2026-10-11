"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20062834; bytecode file offset 0x95f8b0"
!EtasXmlLogfile class methodsFor: 'recovered'!
default
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (self) defaultName.
    recoveredValue2 := (recoveredValue0) initOn: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009c1b4; bytecode file offset 0x998d48"
!EtasXmlLogfile class methodsFor: 'recovered'!
defaultName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EtasGeneralDllApi.
    recoveredValue1 := (recoveredValue0) getETASLogFilePath.
    recoveredValue2 := (recoveredValue1) , ('XML.log').
    ^recoveredValue2
! !

