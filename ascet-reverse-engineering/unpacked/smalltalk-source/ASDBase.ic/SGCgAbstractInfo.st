"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001c1f0; bytecode file offset 0x92209c"
!SGCgAbstractInfo methodsFor: 'recovered'!
notInstalledString
    ^'not installed'
! !

"ASDBase.ic method 0x2001cdf0; bytecode file offset 0x92209c"
!SGCgAbstractInfo methodsFor: 'recovered'!
sectionLabel
    ^'Generation Information'
! !

"ASDBase.ic method 0x20025960; bytecode file offset 0x923928"
!SGCgAbstractInfo methodsFor: 'recovered'!
unknownInformationString
    ^'---'
! !

"ASDBase.ic method 0x200271a0; bytecode file offset 0x923a64"
!SGCgAbstractInfo methodsFor: 'recovered'!
notApplicableString
    | recoveredValue0 |
    recoveredValue0 := (nil) asInfoString.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20065a84; bytecode file offset 0x963428"
!SGCgAbstractInfo methodsFor: 'recovered'!
bannerInfos
    | recoveredValue0 |
    recoveredValue0 := bannerInfos.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20083f10; bytecode file offset 0x9807dc"
!SGCgAbstractInfo methodsFor: 'recovered'!
bindWithTemplate: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) bannerInfos.
    recoveredValue2 := (recoveredValue0) bindWithTemplateParameters: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200854d4; bytecode file offset 0x981da4"
!SGCgAbstractInfo methodsFor: 'recovered'!
bannerInfosFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) bannerInfos.
    bannerInfos := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2008a0a0; bytecode file offset 0x9869dc"
!SGCgAbstractInfo methodsFor: 'recovered'!
defaultXmlBannerTemplate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGBasicWriteStream.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (recoveredValue1) asXmlCodeStream.
    recoveredValue3 := (self) defaultBannerTemplateOn: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008a0d0; bytecode file offset 0x9869dc"
!SGCgAbstractInfo methodsFor: 'recovered'!
defaultBannerTemplate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGBasicWriteStream.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (recoveredValue1) asAnsiCCodeStream.
    recoveredValue3 := (self) defaultBannerTemplateOn: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200945f8; bytecode file offset 0x991174"
!SGCgAbstractInfo methodsFor: 'recovered'!
bannerInfosAt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) bannerInfosAt: (recoveredValue0) default: ('').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011c738; bytecode file offset 0xa18ffc"
!SGCgAbstractInfo methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new: (14).
    bannerInfos := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x201694e8; bytecode file offset 0xa65e04"
!SGCgAbstractInfo methodsFor: 'recovered'!
bannerInfosAt: recoveredArg1 default: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) bannerInfos.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 |
    recoveredBlock8Value0 := recoveredArg2.
    recoveredBlock8Value0
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x203bef14; bytecode file offset 0xcbb818"
!SGCgAbstractInfo methodsFor: 'recovered'!
defaultReducedBannerTemplate
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 |
    recoveredValue0 := SGCgComponentInfo.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal5 := recoveredValue1.
    recoveredValue2 := SGCgBuildEnvironmentInfo.
    recoveredValue3 := (recoveredValue2) create.
    recoveredLocal4 := recoveredValue3.
    recoveredValue4 := SGCgFileoutInfo.
    recoveredValue5 := (recoveredValue4) create.
    recoveredLocal1 := recoveredValue5.
    recoveredLocal3 := $ .
    recoveredLocal2 := 'Banner'.
    recoveredValue6 := SGBasicWriteStream.
    recoveredValue7 := (recoveredValue6) create.
    recoveredLocal6 := recoveredValue7.
    recoveredValue8 := recoveredLocal6.
    recoveredValue9 := (recoveredValue8) asAnsiCCodeStream.
    recoveredValue10 := recoveredValue9.
    recoveredValue11 := recoveredLocal2.
    (recoveredValue10) beginSection: (recoveredValue11).
    recoveredValue12 := recoveredValue9.
    (recoveredValue12) subSectionBannerRow.
    recoveredValue13 := recoveredValue9.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := (recoveredValue14) fileNameKey.
    recoveredValue16 := (recoveredValue15) asTemplateParameter.
    (recoveredValue13) bannerRowLabel: ('File') info: (recoveredValue16).
    recoveredValue17 := recoveredValue9.
    recoveredValue18 := recoveredLocal1.
    recoveredValue19 := (recoveredValue18) fileExtensionKey.
    recoveredValue20 := (recoveredValue19) asTemplateParameter.
    (recoveredValue17) nextPutAll: (recoveredValue20).
    recoveredValue21 := recoveredValue9.
    recoveredValue22 := recoveredLocal1.
    recoveredValue23 := (recoveredValue22) fileDescriptionKey.
    recoveredValue24 := (recoveredValue23) asTemplateParameter.
    recoveredValue25 := (recoveredValue24) asQuotation.
    (recoveredValue21) bannerRowLabel: ('Description') info: (recoveredValue25).
    recoveredValue26 := recoveredValue9.
    (recoveredValue26) subSectionBannerRow.
    recoveredValue27 := recoveredLocal2.
    (recoveredValue9) endSection: (recoveredValue27).
    recoveredValue28 := recoveredLocal6.
    recoveredValue29 := (recoveredValue28) contents.
    ^recoveredValue29
! !

"ASDBase.ic method 0x204edc3c; bytecode file offset 0xdea57c"
!SGCgAbstractInfo methodsFor: 'recovered'!
defaultBannerTemplateOn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 |
    recoveredValue0 := SGCgBuildEnvironmentInfo.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal4 := recoveredValue1.
    recoveredValue2 := SGCgFileoutInfo.
    recoveredValue3 := (recoveredValue2) create.
    recoveredLocal1 := recoveredValue3.
    recoveredLocal3 := $ .
    recoveredLocal2 := 'Banner'.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := recoveredLocal2.
    (recoveredValue5) beginSection: (recoveredValue6).
    recoveredValue7 := recoveredValue4.
    (recoveredValue7) subSectionBannerRow.
    recoveredValue8 := recoveredValue4.
    recoveredValue9 := recoveredLocal3.
    (recoveredValue8) bannerRowCenteredLabel: ('Please do not edit!! This file was automatically generated by ASCET.') fillChar: (recoveredValue9).
    recoveredValue10 := recoveredValue4.
    (recoveredValue10) subSectionBannerRow.
    recoveredValue11 := recoveredValue4.
    recoveredValue12 := recoveredLocal3.
    (recoveredValue11) bannerRowCenteredLabel: ('ETAS GmbH') fillChar: (recoveredValue12).
    recoveredValue13 := recoveredValue4.
    recoveredValue14 := recoveredLocal3.
    (recoveredValue13) bannerRowCenteredLabel: ('D-70469 Stuttgart, Borsigstr. 14') fillChar: (recoveredValue14).
    recoveredValue15 := recoveredValue4.
    (recoveredValue15) subSectionBannerRow.
    recoveredValue16 := recoveredValue4.
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := (recoveredValue17) fileNameKey.
    recoveredValue19 := (recoveredValue18) asTemplateParameter.
    (recoveredValue16) bannerRowLabel: ('File') info: (recoveredValue19).
    recoveredValue20 := recoveredValue4.
    recoveredValue21 := recoveredLocal1.
    recoveredValue22 := (recoveredValue21) fileExtensionKey.
    recoveredValue23 := (recoveredValue22) asTemplateParameter.
    (recoveredValue20) nextPutAll: (recoveredValue23).
    recoveredValue24 := recoveredValue4.
    recoveredValue25 := recoveredLocal1.
    recoveredValue26 := (recoveredValue25) fileDescriptionKey.
    recoveredValue27 := (recoveredValue26) asTemplateParameter.
    recoveredValue28 := (recoveredValue27) asQuotation.
    (recoveredValue24) bannerRowLabel: ('Description') info: (recoveredValue28).
    recoveredValue29 := recoveredValue4.
    recoveredValue30 := recoveredLocal1.
    recoveredValue31 := (recoveredValue30) fileCreationDateKey.
    recoveredValue32 := (recoveredValue31) asTemplateParameter.
    (recoveredValue29) bannerRowLabel: ('Creation Date') info: (recoveredValue32).
    recoveredValue33 := recoveredValue4.
    recoveredValue34 := recoveredLocal1.
    recoveredValue35 := (recoveredValue34) fileCreationTimeKey.
    recoveredValue36 := (recoveredValue35) asTemplateParameter.
    (recoveredValue33) bannerRowLabel: ('Creation Time') info: (recoveredValue36).
    recoveredValue37 := recoveredValue4.
    (recoveredValue37) subSectionBannerRow.
    recoveredValue38 := recoveredValue4.
    recoveredValue39 := recoveredLocal4.
    recoveredValue40 := (recoveredValue39) ascetUserKey.
    recoveredValue41 := (recoveredValue40) asTemplateParameter.
    (recoveredValue38) bannerRowLabel: ('ASCET User') info: (recoveredValue41).
    recoveredValue42 := recoveredValue4.
    recoveredValue43 := recoveredLocal4.
    recoveredValue44 := (recoveredValue43) ascetVersionKey.
    recoveredValue45 := (recoveredValue44) asTemplateParameter.
    (recoveredValue42) bannerRowLabel: ('ASCET Version') info: (recoveredValue45).
    recoveredValue46 := recoveredValue4.
    recoveredValue47 := recoveredLocal4.
    recoveredValue48 := (recoveredValue47) ascetMDVersionKey.
    recoveredValue49 := (recoveredValue48) asTemplateParameter.
    (recoveredValue46) bannerRowLabel: ('ASCET-MD Version') info: (recoveredValue49).
    recoveredValue50 := recoveredValue4.
    recoveredValue51 := recoveredLocal4.
    recoveredValue52 := (recoveredValue51) ascetRPVersionKey.
    recoveredValue53 := (recoveredValue52) asTemplateParameter.
    (recoveredValue50) bannerRowLabel: ('ASCET-RP Version') info: (recoveredValue53).
    recoveredValue54 := recoveredValue4.
    recoveredValue55 := recoveredLocal4.
    recoveredValue56 := (recoveredValue55) ascetSEVersionKey.
    recoveredValue57 := (recoveredValue56) asTemplateParameter.
    (recoveredValue54) bannerRowLabel: ('ASCET-SE Version') info: (recoveredValue57).
    recoveredValue58 := recoveredValue4.
    (recoveredValue58) subSectionBannerRow.
    recoveredValue59 := recoveredLocal2.
    (recoveredValue4) endSection: (recoveredValue59).
    recoveredValue60 := recoveredArg1.
    recoveredValue61 := (recoveredValue60) contents.
    ^recoveredValue61
! !

