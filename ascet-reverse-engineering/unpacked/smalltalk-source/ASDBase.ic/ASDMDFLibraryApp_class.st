"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200029d0; bytecode file offset 0x8ffcfc"
!ASDMDFLibraryApp class methodsFor: 'recovered'!
_PRAGMA_INKAMDFLibrary
    ^self
! !

"ASDBase.ic method 0x20002e50; bytecode file offset 0x8ffcfc"
!ASDMDFLibraryApp class methodsFor: 'recovered'!
_PRAGMA_MDFConstants
    ^self
! !

"ASDBase.ic method 0x2004e0c0; bytecode file offset 0x94d048"
!ASDMDFLibraryApp class methodsFor: 'recovered'!
loaded
    (self) initMDFConstants.
    ^self
! !

"ASDBase.ic method 0x201beef0; bytecode file offset 0xabb7c0"
!ASDMDFLibraryApp class methodsFor: 'recovered'!
testErrorHandling
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := INKAMDFLib.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := (recoveredValue2) open: ('blablabla').
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := (recoveredValue4) fileOpen: ('bla.bla') mode: (0).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := (recoveredValue6) close.
    recoveredLocal1 := recoveredValue7.
    ^self
! !

"ASDBase.ic method 0x20636348; bytecode file offset 0xf32d30"
!ASDMDFLibraryApp class methodsFor: 'recovered'!
initMDFConstants
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 |
    recoveredValue0 := MDFConstants.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) at: ('MDFOpenCreate') put: (2).
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) at: ('MDFOpenModify') put: (1).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) at: ('MDFOpenRead') put: (0).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) at: ('MDFFormNon') put: (65535).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) at: ('MDFFormLin') put: (0).
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) at: ('MDFFormTab') put: (2).
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) at: ('MDFFormItab') put: (1).
    recoveredValue9 := recoveredValue1.
    (recoveredValue9) at: ('MDFFormPol') put: (6).
    recoveredValue10 := recoveredValue1.
    (recoveredValue10) at: ('MDFFormExp') put: (7).
    recoveredValue11 := recoveredValue1.
    (recoveredValue11) at: ('MDFFormLog') put: (8).
    recoveredValue12 := recoveredValue1.
    (recoveredValue12) at: ('MDFSeekAbsolute') put: (0).
    recoveredValue13 := recoveredValue1.
    (recoveredValue13) at: ('MDFSeekRelative') put: (16).
    recoveredValue14 := recoveredValue1.
    (recoveredValue14) at: ('MDFSeekNearest') put: (0).
    recoveredValue15 := recoveredValue1.
    (recoveredValue15) at: ('MDFSeekEq') put: (1).
    recoveredValue16 := recoveredValue1.
    (recoveredValue16) at: ('MDFSeekLt') put: (2).
    recoveredValue17 := recoveredValue1.
    (recoveredValue17) at: ('MDFSeekGt') put: (4).
    recoveredValue18 := recoveredValue1.
    (recoveredValue18) at: ('MDFSeekLe') put: (3).
    recoveredValue19 := recoveredValue1.
    (recoveredValue19) at: ('MDFSeekGe') put: (5).
    recoveredValue20 := recoveredValue1.
    (recoveredValue20) at: ('MDFChnValue') put: (0).
    recoveredValue21 := recoveredValue1.
    (recoveredValue21) at: ('MDFChnTime') put: (1).
    recoveredValue22 := recoveredValue1.
    (recoveredValue22) at: ('ConvertPhy') put: (102).
    recoveredValue23 := recoveredValue1.
    (recoveredValue23) at: ('ConvertHex') put: (101).
    recoveredValue24 := recoveredValue1.
    (recoveredValue24) at: ('MDFValueUnsigned') put: (0).
    recoveredValue25 := recoveredValue1.
    (recoveredValue25) at: ('MDFValueSigned') put: (1).
    recoveredValue26 := recoveredValue1.
    (recoveredValue26) at: ('MDFValueFloat') put: (2).
    recoveredValue27 := recoveredValue1.
    (recoveredValue27) at: ('MDFFormLin') put: (0).
    recoveredValue28 := recoveredValue1.
    (recoveredValue28) at: ('MDFFormTab') put: (2).
    recoveredValue29 := recoveredValue1.
    (recoveredValue29) at: ('MDFFormItab') put: (1).
    recoveredValue30 := recoveredValue1.
    (recoveredValue30) at: ('MDFFormPol') put: (6).
    recoveredValue31 := recoveredValue1.
    (recoveredValue31) at: ('MDFFormExp') put: (7).
    recoveredValue32 := recoveredValue1.
    (recoveredValue32) at: ('MDFFormLog') put: (8).
    recoveredValue33 := recoveredValue1.
    (recoveredValue33) at: ('MDFModuleNon') put: (0).
    recoveredValue34 := recoveredValue1.
    (recoveredValue34) at: ('MDFModuleAim') put: (1).
    recoveredValue35 := recoveredValue1.
    (recoveredValue35) at: ('MDFModuleDim') put: (2).
    recoveredValue36 := recoveredValue1.
    (recoveredValue36) at: ('MDFModuleCan') put: (3).
    recoveredValue37 := recoveredValue1.
    (recoveredValue37) at: ('MDFModuleV24') put: (4).
    recoveredValue38 := recoveredValue1.
    (recoveredValue38) at: ('MDFModuleLa1') put: (5).
    recoveredValue39 := recoveredValue1.
    (recoveredValue39) at: ('MDFModuleAcn') put: (6).
    recoveredValue40 := recoveredValue1.
    (recoveredValue40) at: ('MDFModuleEtk') put: (7).
    recoveredValue41 := recoveredValue1.
    (recoveredValue41) at: ('MDFOk') put: (0).
    recoveredValue42 := recoveredValue1.
    (recoveredValue42) at: ('MDFEog') put: (1).
    recoveredValue43 := recoveredValue1.
    (recoveredValue43) at: ('MDFRecordNotFnd') put: (2).
    recoveredValue44 := recoveredValue1.
    (recoveredValue44) at: ('MDFNameNotFnd') put: (3).
    recoveredValue45 := recoveredValue1.
    (recoveredValue45) at: ('MDFChannelNotFnd') put: (4).
    recoveredValue46 := recoveredValue1.
    (recoveredValue46) at: ('MDFAlreadySorted') put: (5).
    recoveredValue47 := recoveredValue1.
    (recoveredValue47) at: ('MDFRangeUnknown') put: (6).
    recoveredValue48 := recoveredValue1.
    (recoveredValue48) at: ('EOk') put: (0).
    recoveredValue49 := recoveredValue1.
    (recoveredValue49) at: ('EMDFFileNotFnd') put: (1000).
    recoveredValue50 := recoveredValue1.
    (recoveredValue50) at: ('EMDFGroupNotFnd') put: (1001).
    recoveredValue51 := recoveredValue1.
    (recoveredValue51) at: ('EMDFChannelNotFnd') put: (1002).
    recoveredValue52 := recoveredValue1.
    (recoveredValue52) at: ('EMDFNoTime') put: (1003).
    recoveredValue53 := recoveredValue1.
    (recoveredValue53) at: ('EMDFFormNotFnd') put: (1004).
    recoveredValue54 := recoveredValue1.
    (recoveredValue54) at: ('EMDFFormUnknown') put: (1005).
    recoveredValue55 := recoveredValue1.
    (recoveredValue55) at: ('EMDFTriggerNotFnd') put: (1006).
    recoveredValue56 := recoveredValue1.
    (recoveredValue56) at: ('EMDFTriggerUnknown') put: (1007).
    recoveredValue57 := recoveredValue1.
    (recoveredValue57) at: ('EMDFTimeChannelNotFnd') put: (1008).
    recoveredValue58 := recoveredValue1.
    (recoveredValue58) at: ('EMDFModuleNotFnd') put: (1009).
    recoveredValue59 := recoveredValue1.
    (recoveredValue59) at: ('EMDFUnsorted') put: (1010).
    recoveredValue60 := recoveredValue1.
    (recoveredValue60) at: ('EMDFFormNotTab') put: (1011).
    recoveredValue61 := recoveredValue1.
    (recoveredValue61) at: ('EMDFNotInitialized') put: (-1000).
    recoveredValue62 := recoveredValue1.
    (recoveredValue62) at: ('EMDFBadFileHandle') put: (-1001).
    recoveredValue63 := recoveredValue1.
    (recoveredValue63) at: ('EMDFBadGroupHandle') put: (-1002).
    recoveredValue64 := recoveredValue1.
    (recoveredValue64) at: ('EMDFBadChannelHandle') put: (-1003).
    recoveredValue65 := recoveredValue1.
    (recoveredValue65) at: ('EMDFBadOpenMode') put: (-1004).
    recoveredValue66 := recoveredValue1.
    (recoveredValue66) at: ('EMDFBadSeekMode') put: (-1005).
    recoveredValue67 := recoveredValue1.
    (recoveredValue67) at: ('EMDFBadChannelType') put: (-1006).
    recoveredValue68 := recoveredValue1.
    (recoveredValue68) at: ('EMDFBadChannelValNBit') put: (-1007).
    recoveredValue69 := recoveredValue1.
    (recoveredValue69) at: ('EMDFBadChannelValType') put: (-1008).
    recoveredValue70 := recoveredValue1.
    (recoveredValue70) at: ('EMDFGroupCreate') put: (-1009).
    recoveredValue71 := recoveredValue1.
    (recoveredValue71) at: ('EMDFWrite') put: (-2000).
    recoveredValue72 := recoveredValue1.
    (recoveredValue72) at: ('EMDFRead') put: (-2001).
    recoveredValue73 := recoveredValue1.
    (recoveredValue73) at: ('EMDFSeek') put: (-2002).
    recoveredValue74 := recoveredValue1.
    (recoveredValue74) at: ('EMDFClose') put: (-2003).
    recoveredValue75 := recoveredValue1.
    (recoveredValue75) at: ('EMDFFormat') put: (-2004).
    recoveredValue76 := recoveredValue1.
    (recoveredValue76) at: ('EMDFInkon') put: (-2005).
    recoveredValue77 := recoveredValue1.
    (recoveredValue77) at: ('EMDFOvrflow') put: (-2006).
    recoveredValue78 := recoveredValue1.
    (recoveredValue78) at: ('EMDFNomem') put: (-2007).
    recoveredValue79 := recoveredValue1.
    (recoveredValue79) at: ('EMDFBlockNotFnd') put: (-2008).
    recoveredValue80 := recoveredValue1.
    (recoveredValue80) at: ('EMDFLinkNotFnd') put: (-2009).
    recoveredValue81 := recoveredValue1.
    (recoveredValue81) at: ('EMDFNodeNotFnd') put: (-2010).
    ^self
! !

