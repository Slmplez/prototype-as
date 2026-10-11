"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000806c; bytecode file offset 0x15b928"
!WindowsPlatformExtensions class methodsFor: 'recovered'!
loaded
    (self) initializeGuids.
    ^self
! !

"psupp.ic method 0x2000e824; bytecode file offset 0x1620c0"
!WindowsPlatformExtensions class methodsFor: 'recovered'!
removing
    (self) uninitializeConstants.
    GuidsInitialized := false.
    ^self
! !

"psupp.ic method 0x2000e840; bytecode file offset 0x1620dc"
!WindowsPlatformExtensions class methodsFor: 'recovered'!
preStartUp
    (self) initializePlatformState.
    (self) initializeGuids.
    ^self
! !

"psupp.ic method 0x2002ff54; bytecode file offset 0x1837f8"
!WindowsPlatformExtensions class methodsFor: 'recovered'!
initializeGuids
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := GuidsInitialized.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := OleManager.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRunning.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) initializeConstants.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            GuidsInitialized := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x20032ee4; bytecode file offset 0x1867a0"
!WindowsPlatformExtensions class methodsFor: 'recovered'!
initializePlatformState
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := OSVersioninfo.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    (recoveredValue1) getVersionEx.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) dwPlatformId.
    recoveredValue5 := VerPlatformWin32Windows.
    recoveredValue6 := (recoveredValue4) == (recoveredValue5).
    IsWin95 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) dwPlatformId.
    recoveredValue9 := VerPlatformWin32Nt.
    recoveredValue10 := (recoveredValue8) == (recoveredValue9).
    IsWinNT := recoveredValue10.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (recoveredValue11) dwMajorVersion.
    recoveredValue13 := (recoveredValue12) >= (4).
    Is95Shell := recoveredValue13.
    ^self
! !

"psupp.ic method 0x2004de40; bytecode file offset 0x1a1840"
!WindowsPlatformExtensions class methodsFor: 'recovered'!
uninitializeConstants
    IIDIUnknown := nil.
    IIDIAdviseSink := nil.
    IIDIAdviseSink2 := nil.
    IIDIBindCtx := nil.
    IIDIClassFactory := nil.
    IIDIClassFactory2 := nil.
    IIDIConnectionPoint := nil.
    IIDIConnectionPointContainer := nil.
    IIDICreateErrorInfo := nil.
    IIDICreateTypeInfo := nil.
    IIDICreateTypeLib := nil.
    IIDIDataAdviseHolder := nil.
    IIDIDataObject := nil.
    IIDIDispatch := nil.
    IIDIFontDisp := nil.
    IIDIPictureDisp := nil.
    IIDIDropSource := nil.
    IIDIDropTarget := nil.
    IIDIEnumConnectionPoints := nil.
    IIDIEnumConnections := nil.
    IIDIEnumFORMATETC := nil.
    IIDIEnumMoniker := nil.
    IIDIEnumOLEVERB := nil.
    IIDIEnumSTATDATA := nil.
    IIDIEnumSTATSTG := nil.
    IIDIEnumString := nil.
    IIDIEnumUnknown := nil.
    IIDIEnumVARIANT := nil.
    IIDIErrorInfo := nil.
    IIDIErrorLog := nil.
    IIDIExternalConnection := nil.
    IIDIFont := nil.
    IIDILockBytes := nil.
    IIDIMalloc := nil.
    IIDIMallocSpy := nil.
    IIDIMarshal := nil.
    IIDIMessageFilter := nil.
    IIDIOleAdviseHolder := nil.
    IIDIOleCache := nil.
    IIDIOleCache2 := nil.
    IIDIOleCacheControl := nil.
    IIDIOleClientSite := nil.
    IIDIOleControl := nil.
    IIDIOleControlSite := nil.
    IIDIOleLink := nil.
    IIDIOleObject := nil.
    IIDIOleWindow := nil.
    IIDIOleInPlaceActiveObject := nil.
    IIDIOleInPlaceObject := nil.
    IIDIOleInPlaceSite := nil.
    IIDIOleInPlaceUIWindow := nil.
    IIDIOleInPlaceFrame := nil.
    IIDIParseDisplayName := nil.
    IIDIOleContainer := nil.
    IIDIOleItemContainer := nil.
    IIDIPerPropertyBrowsing := nil.
    IIDIPersist := nil.
    IIDIPersistFile := nil.
    IIDIPersistMemory := nil.
    IIDIPersistPropertyBag := nil.
    IIDIPersistStorage := nil.
    IIDIPersistStream := nil.
    IIDIMoniker := nil.
    IIDIPersistStreamInit := nil.
    IIDIPicture := nil.
    IIDIPropertyBag := nil.
    IIDIPropertyNotifySink := nil.
    IIDIPropertyPage := nil.
    IIDIPropertyPage2 := nil.
    IIDIPropertyPageSite := nil.
    IIDIProvideClassInfo := nil.
    IIDIProvideClassInfo2 := nil.
    IIDIPSFactoryBuffer := nil.
    IIDIRootStorage := nil.
    IIDIROTData := nil.
    IIDIRpcChannelBuffer := nil.
    IIDIRpcProxyBuffer := nil.
    IIDIRpcStubBuffer := nil.
    IIDIRunnableObject := nil.
    IIDIRunningObjectTable := nil.
    IIDISimpleFrameSite := nil.
    IIDISpecifyPropertyPages := nil.
    IIDIStdMarshalInfo := nil.
    IIDIStorage := nil.
    IIDIStream := nil.
    IIDISupportErrorInfo := nil.
    IIDITypeComp := nil.
    IIDITypeInfo := nil.
    IIDITypeLib := nil.
    IIDIViewObject := nil.
    IIDIViewObject2 := nil.
    ^self
! !

"psupp.ic method 0x200530b4; bytecode file offset 0x1a6c28"
!WindowsPlatformExtensions class methodsFor: 'recovered'!
initializeConstants
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 recoveredValue94 recoveredValue95 recoveredValue96 recoveredValue97 recoveredValue98 recoveredValue99 recoveredValue100 recoveredValue101 recoveredValue102 recoveredValue103 recoveredValue104 recoveredValue105 recoveredValue106 recoveredValue107 recoveredValue108 recoveredValue109 recoveredValue110 recoveredValue111 recoveredValue112 recoveredValue113 recoveredValue114 recoveredValue115 recoveredValue116 recoveredValue117 recoveredValue118 recoveredValue119 recoveredValue120 recoveredValue121 recoveredValue122 recoveredValue123 recoveredValue124 recoveredValue125 recoveredValue126 recoveredValue127 recoveredValue128 recoveredValue129 recoveredValue130 recoveredValue131 recoveredValue132 recoveredValue133 recoveredValue134 recoveredValue135 recoveredValue136 recoveredValue137 recoveredValue138 recoveredValue139 recoveredValue140 recoveredValue141 recoveredValue142 recoveredValue143 recoveredValue144 recoveredValue145 recoveredValue146 recoveredValue147 recoveredValue148 recoveredValue149 recoveredValue150 recoveredValue151 recoveredValue152 recoveredValue153 recoveredValue154 recoveredValue155 recoveredValue156 recoveredValue157 recoveredValue158 recoveredValue159 recoveredValue160 recoveredValue161 recoveredValue162 recoveredValue163 recoveredValue164 recoveredValue165 recoveredValue166 recoveredValue167 recoveredValue168 recoveredValue169 recoveredValue170 recoveredValue171 recoveredValue172 recoveredValue173 recoveredValue174 recoveredValue175 recoveredValue176 recoveredValue177 recoveredValue178 recoveredValue179 recoveredValue180 recoveredValue181 |
    recoveredValue0 := OSGuid.
    recoveredValue1 := (recoveredValue0) fromString: ('{00000000-0000-0000-C000-000000000046}').
    IIDIUnknown := recoveredValue1.
    recoveredValue2 := OSGuid.
    recoveredValue3 := (recoveredValue2) fromString: ('{0000010F-0000-0000-C000-000000000046}').
    IIDIAdviseSink := recoveredValue3.
    recoveredValue4 := OSGuid.
    recoveredValue5 := (recoveredValue4) fromString: ('{00000125-0000-0000-C000-000000000046}').
    IIDIAdviseSink2 := recoveredValue5.
    recoveredValue6 := OSGuid.
    recoveredValue7 := (recoveredValue6) fromString: ('{0000000E-0000-0000-C000-000000000046}').
    IIDIBindCtx := recoveredValue7.
    recoveredValue8 := OSGuid.
    recoveredValue9 := (recoveredValue8) fromString: ('{00000001-0000-0000-C000-000000000046}').
    IIDIClassFactory := recoveredValue9.
    recoveredValue10 := OSGuid.
    recoveredValue11 := (recoveredValue10) fromString: ('{B196B28F-BAB4-101A-B69C-00AA00341D07}').
    IIDIClassFactory2 := recoveredValue11.
    recoveredValue12 := OSGuid.
    recoveredValue13 := (recoveredValue12) fromString: ('{B196B286-BAB4-101A-B69C-00AA00341D07}').
    IIDIConnectionPoint := recoveredValue13.
    recoveredValue14 := OSGuid.
    recoveredValue15 := (recoveredValue14) fromString: ('{B196B284-BAB4-101A-B69C-00AA00341D07}').
    IIDIConnectionPointContainer := recoveredValue15.
    recoveredValue16 := OSGuid.
    recoveredValue17 := (recoveredValue16) fromString: ('{22F03340-547D-101B-8E65-08002B2BD119}').
    IIDICreateErrorInfo := recoveredValue17.
    recoveredValue18 := OSGuid.
    recoveredValue19 := (recoveredValue18) fromString: ('{00020405-0000-0000-C000-000000000046}').
    IIDICreateTypeInfo := recoveredValue19.
    recoveredValue20 := OSGuid.
    recoveredValue21 := (recoveredValue20) fromString: ('{00020406-0000-0000-C000-000000000046}').
    IIDICreateTypeLib := recoveredValue21.
    recoveredValue22 := OSGuid.
    recoveredValue23 := (recoveredValue22) fromString: ('{00000110-0000-0000-C000-000000000046}').
    IIDIDataAdviseHolder := recoveredValue23.
    recoveredValue24 := OSGuid.
    recoveredValue25 := (recoveredValue24) fromString: ('{0000010E-0000-0000-C000-000000000046}').
    IIDIDataObject := recoveredValue25.
    recoveredValue26 := OSGuid.
    recoveredValue27 := (recoveredValue26) fromString: ('{00020400-0000-0000-C000-000000000046}').
    IIDIDispatch := recoveredValue27.
    recoveredValue28 := OSGuid.
    recoveredValue29 := (recoveredValue28) fromString: ('{BEF6E003-A874-101A-8BBA-00AA00300CAB}').
    IIDIFontDisp := recoveredValue29.
    recoveredValue30 := OSGuid.
    recoveredValue31 := (recoveredValue30) fromString: ('{7BF80981-BF32-101A-8BBB-00AA00300CAB}').
    IIDIPictureDisp := recoveredValue31.
    recoveredValue32 := OSGuid.
    recoveredValue33 := (recoveredValue32) fromString: ('{00000121-0000-0000-C000-000000000046}').
    IIDIDropSource := recoveredValue33.
    recoveredValue34 := OSGuid.
    recoveredValue35 := (recoveredValue34) fromString: ('{00000122-0000-0000-C000-000000000046}').
    IIDIDropTarget := recoveredValue35.
    recoveredValue36 := OSGuid.
    recoveredValue37 := (recoveredValue36) fromString: ('{B196B285-BAB4-101A-B69C-00AA00341D07}').
    IIDIEnumConnectionPoints := recoveredValue37.
    recoveredValue38 := OSGuid.
    recoveredValue39 := (recoveredValue38) fromString: ('{B196B287-BAB4-101A-B69C-00AA00341D07}').
    IIDIEnumConnections := recoveredValue39.
    recoveredValue40 := OSGuid.
    recoveredValue41 := (recoveredValue40) fromString: ('{00000103-0000-0000-C000-000000000046}').
    IIDIEnumFORMATETC := recoveredValue41.
    recoveredValue42 := OSGuid.
    recoveredValue43 := (recoveredValue42) fromString: ('{00000102-0000-0000-C000-000000000046}').
    IIDIEnumMoniker := recoveredValue43.
    recoveredValue44 := OSGuid.
    recoveredValue45 := (recoveredValue44) fromString: ('{00000104-0000-0000-C000-000000000046}').
    IIDIEnumOLEVERB := recoveredValue45.
    recoveredValue46 := OSGuid.
    recoveredValue47 := (recoveredValue46) fromString: ('{00000105-0000-0000-C000-000000000046}').
    IIDIEnumSTATDATA := recoveredValue47.
    recoveredValue48 := OSGuid.
    recoveredValue49 := (recoveredValue48) fromString: ('{0000000D-0000-0000-C000-000000000046}').
    IIDIEnumSTATSTG := recoveredValue49.
    recoveredValue50 := OSGuid.
    recoveredValue51 := (recoveredValue50) fromString: ('{00000101-0000-0000-C000-000000000046}').
    IIDIEnumString := recoveredValue51.
    recoveredValue52 := OSGuid.
    recoveredValue53 := (recoveredValue52) fromString: ('{00000100-0000-0000-C000-000000000046}').
    IIDIEnumUnknown := recoveredValue53.
    recoveredValue54 := OSGuid.
    recoveredValue55 := (recoveredValue54) fromString: ('{00020404-0000-0000-C000-000000000046}').
    IIDIEnumVARIANT := recoveredValue55.
    recoveredValue56 := OSGuid.
    recoveredValue57 := (recoveredValue56) fromString: ('{1CF2B120-547D-101B-8E65-08002B2BD119}').
    IIDIErrorInfo := recoveredValue57.
    recoveredValue58 := OSGuid.
    recoveredValue59 := (recoveredValue58) fromString: ('{3127CA40-446E-11CE-8135-00AA004BB851}').
    IIDIErrorLog := recoveredValue59.
    recoveredValue60 := OSGuid.
    recoveredValue61 := (recoveredValue60) fromString: ('{00000019-0000-0000-C000-000000000046}').
    IIDIExternalConnection := recoveredValue61.
    recoveredValue62 := OSGuid.
    recoveredValue63 := (recoveredValue62) fromString: ('{BEF6E002-A874-101A-8BBA-00AA00300CAB}').
    IIDIFont := recoveredValue63.
    recoveredValue64 := OSGuid.
    recoveredValue65 := (recoveredValue64) fromString: ('{0000000A-0000-0000-C000-000000000046}').
    IIDILockBytes := recoveredValue65.
    recoveredValue66 := OSGuid.
    recoveredValue67 := (recoveredValue66) fromString: ('{00000002-0000-0000-C000-000000000046}').
    IIDIMalloc := recoveredValue67.
    recoveredValue68 := OSGuid.
    recoveredValue69 := (recoveredValue68) fromString: ('{0000001D-0000-0000-C000-000000000046}').
    IIDIMallocSpy := recoveredValue69.
    recoveredValue70 := OSGuid.
    recoveredValue71 := (recoveredValue70) fromString: ('{00000003-0000-0000-C000-000000000046}').
    IIDIMarshal := recoveredValue71.
    recoveredValue72 := OSGuid.
    recoveredValue73 := (recoveredValue72) fromString: ('{00000016-0000-0000-C000-000000000046}').
    IIDIMessageFilter := recoveredValue73.
    recoveredValue74 := OSGuid.
    recoveredValue75 := (recoveredValue74) fromString: ('{00000111-0000-0000-C000-000000000046}').
    IIDIOleAdviseHolder := recoveredValue75.
    recoveredValue76 := OSGuid.
    recoveredValue77 := (recoveredValue76) fromString: ('{0000011E-0000-0000-C000-000000000046}').
    IIDIOleCache := recoveredValue77.
    recoveredValue78 := OSGuid.
    recoveredValue79 := (recoveredValue78) fromString: ('{00000128-0000-0000-C000-000000000046}').
    IIDIOleCache2 := recoveredValue79.
    recoveredValue80 := OSGuid.
    recoveredValue81 := (recoveredValue80) fromString: ('{00000129-0000-0000-C000-000000000046}').
    IIDIOleCacheControl := recoveredValue81.
    recoveredValue82 := OSGuid.
    recoveredValue83 := (recoveredValue82) fromString: ('{00000118-0000-0000-C000-000000000046}').
    IIDIOleClientSite := recoveredValue83.
    recoveredValue84 := OSGuid.
    recoveredValue85 := (recoveredValue84) fromString: ('{B196B288-BAB4-101A-B69C-00AA00341D07}').
    IIDIOleControl := recoveredValue85.
    recoveredValue86 := OSGuid.
    recoveredValue87 := (recoveredValue86) fromString: ('{B196B289-BAB4-101A-B69C-00AA00341D07}').
    IIDIOleControlSite := recoveredValue87.
    recoveredValue88 := OSGuid.
    recoveredValue89 := (recoveredValue88) fromString: ('{0000011D-0000-0000-C000-000000000046}').
    IIDIOleLink := recoveredValue89.
    recoveredValue90 := OSGuid.
    recoveredValue91 := (recoveredValue90) fromString: ('{00000112-0000-0000-C000-000000000046}').
    IIDIOleObject := recoveredValue91.
    recoveredValue92 := OSGuid.
    recoveredValue93 := (recoveredValue92) fromString: ('{00000114-0000-0000-C000-000000000046}').
    IIDIOleWindow := recoveredValue93.
    recoveredValue94 := OSGuid.
    recoveredValue95 := (recoveredValue94) fromString: ('{00000117-0000-0000-C000-000000000046}').
    IIDIOleInPlaceActiveObject := recoveredValue95.
    recoveredValue96 := OSGuid.
    recoveredValue97 := (recoveredValue96) fromString: ('{00000113-0000-0000-C000-000000000046}').
    IIDIOleInPlaceObject := recoveredValue97.
    recoveredValue98 := OSGuid.
    recoveredValue99 := (recoveredValue98) fromString: ('{00000119-0000-0000-C000-000000000046}').
    IIDIOleInPlaceSite := recoveredValue99.
    recoveredValue100 := OSGuid.
    recoveredValue101 := (recoveredValue100) fromString: ('{00000115-0000-0000-C000-000000000046}').
    IIDIOleInPlaceUIWindow := recoveredValue101.
    recoveredValue102 := OSGuid.
    recoveredValue103 := (recoveredValue102) fromString: ('{00000116-0000-0000-C000-000000000046}').
    IIDIOleInPlaceFrame := recoveredValue103.
    recoveredValue104 := OSGuid.
    recoveredValue105 := (recoveredValue104) fromString: ('{0000011A-0000-0000-C000-000000000046}').
    IIDIParseDisplayName := recoveredValue105.
    recoveredValue106 := OSGuid.
    recoveredValue107 := (recoveredValue106) fromString: ('{0000011B-0000-0000-C000-000000000046}').
    IIDIOleContainer := recoveredValue107.
    recoveredValue108 := OSGuid.
    recoveredValue109 := (recoveredValue108) fromString: ('{0000011C-0000-0000-C000-000000000046}').
    IIDIOleItemContainer := recoveredValue109.
    recoveredValue110 := OSGuid.
    recoveredValue111 := (recoveredValue110) fromString: ('{376BD3AA-3845-101B-84ED-08002B2EC713}').
    IIDIPerPropertyBrowsing := recoveredValue111.
    recoveredValue112 := OSGuid.
    recoveredValue113 := (recoveredValue112) fromString: ('{0000010C-0000-0000-C000-000000000046}').
    IIDIPersist := recoveredValue113.
    recoveredValue114 := OSGuid.
    recoveredValue115 := (recoveredValue114) fromString: ('{0000010B-0000-0000-C000-000000000046}').
    IIDIPersistFile := recoveredValue115.
    recoveredValue116 := OSGuid.
    recoveredValue117 := (recoveredValue116) fromString: ('{BD1AE5E0-A6AE-11CE-BD37-504200C10000}').
    IIDIPersistMemory := recoveredValue117.
    recoveredValue118 := OSGuid.
    recoveredValue119 := (recoveredValue118) fromString: ('{37D84F60-42CB-11CE-8135-00AA004BB851}').
    IIDIPersistPropertyBag := recoveredValue119.
    recoveredValue120 := OSGuid.
    recoveredValue121 := (recoveredValue120) fromString: ('{0000010A-0000-0000-C000-000000000046}').
    IIDIPersistStorage := recoveredValue121.
    recoveredValue122 := OSGuid.
    recoveredValue123 := (recoveredValue122) fromString: ('{00000109-0000-0000-C000-000000000046}').
    IIDIPersistStream := recoveredValue123.
    recoveredValue124 := OSGuid.
    recoveredValue125 := (recoveredValue124) fromString: ('{0000000F-0000-0000-C000-000000000046}').
    IIDIMoniker := recoveredValue125.
    recoveredValue126 := OSGuid.
    recoveredValue127 := (recoveredValue126) fromString: ('{7FD52380-4E07-101B-AE2D-08002B2EC713}').
    IIDIPersistStreamInit := recoveredValue127.
    recoveredValue128 := OSGuid.
    recoveredValue129 := (recoveredValue128) fromString: ('{7BF80980-BF32-101A-8BBB-00AA00300CAB}').
    IIDIPicture := recoveredValue129.
    recoveredValue130 := OSGuid.
    recoveredValue131 := (recoveredValue130) fromString: ('{55272A00-42CB-11CE-8135-00AA004BB851}').
    IIDIPropertyBag := recoveredValue131.
    recoveredValue132 := OSGuid.
    recoveredValue133 := (recoveredValue132) fromString: ('{9BFBBC02-EFF1-101A-84ED-00AA00341D07}').
    IIDIPropertyNotifySink := recoveredValue133.
    recoveredValue134 := OSGuid.
    recoveredValue135 := (recoveredValue134) fromString: ('{B196B28D-BAB4-101A-B69C-00AA00341D07}').
    IIDIPropertyPage := recoveredValue135.
    recoveredValue136 := OSGuid.
    recoveredValue137 := (recoveredValue136) fromString: ('{01E44665-24AC-101B-84ED-08002B2EC713}').
    IIDIPropertyPage2 := recoveredValue137.
    recoveredValue138 := OSGuid.
    recoveredValue139 := (recoveredValue138) fromString: ('{B196B28C-BAB4-101A-B69C-00AA00341D07}').
    IIDIPropertyPageSite := recoveredValue139.
    recoveredValue140 := OSGuid.
    recoveredValue141 := (recoveredValue140) fromString: ('{B196B283-BAB4-101A-B69C-00AA00341D07}').
    IIDIProvideClassInfo := recoveredValue141.
    recoveredValue142 := OSGuid.
    recoveredValue143 := (recoveredValue142) fromString: ('{A6BC3AC0-DBAA-11CE-9DE3-00AA004BB851}').
    IIDIProvideClassInfo2 := recoveredValue143.
    recoveredValue144 := OSGuid.
    recoveredValue145 := (recoveredValue144) fromString: ('{D5F569D0-593B-101A-B569-08002B2DBF7A}').
    IIDIPSFactoryBuffer := recoveredValue145.
    recoveredValue146 := OSGuid.
    recoveredValue147 := (recoveredValue146) fromString: ('{00000012-0000-0000-C000-000000000046}').
    IIDIRootStorage := recoveredValue147.
    recoveredValue148 := OSGuid.
    recoveredValue149 := (recoveredValue148) fromString: ('{F29F6BC0-5021-11CE-AA15-00006901293F}').
    IIDIROTData := recoveredValue149.
    recoveredValue150 := OSGuid.
    recoveredValue151 := (recoveredValue150) fromString: ('{D5F56B60-593B-101A-B569-08002B2DBF7A}').
    IIDIRpcChannelBuffer := recoveredValue151.
    recoveredValue152 := OSGuid.
    recoveredValue153 := (recoveredValue152) fromString: ('{D5F56A34-593B-101A-B569-08002B2DBF7A}').
    IIDIRpcProxyBuffer := recoveredValue153.
    recoveredValue154 := OSGuid.
    recoveredValue155 := (recoveredValue154) fromString: ('{D5F56AFC-593B-101A-B569-08002B2DBF7A}').
    IIDIRpcStubBuffer := recoveredValue155.
    recoveredValue156 := OSGuid.
    recoveredValue157 := (recoveredValue156) fromString: ('{00000126-0000-0000-C000-000000000046}').
    IIDIRunnableObject := recoveredValue157.
    recoveredValue158 := OSGuid.
    recoveredValue159 := (recoveredValue158) fromString: ('{00000010-0000-0000-C000-000000000046}').
    IIDIRunningObjectTable := recoveredValue159.
    recoveredValue160 := OSGuid.
    recoveredValue161 := (recoveredValue160) fromString: ('{742B0E01-14E6-101B-914E-00AA00300CAB}').
    IIDISimpleFrameSite := recoveredValue161.
    recoveredValue162 := OSGuid.
    recoveredValue163 := (recoveredValue162) fromString: ('{B196B28B-BAB4-101A-B69C-00AA00341D07}').
    IIDISpecifyPropertyPages := recoveredValue163.
    recoveredValue164 := OSGuid.
    recoveredValue165 := (recoveredValue164) fromString: ('{00000018-0000-0000-C000-000000000046}').
    IIDIStdMarshalInfo := recoveredValue165.
    recoveredValue166 := OSGuid.
    recoveredValue167 := (recoveredValue166) fromString: ('{0000000B-0000-0000-C000-000000000046}').
    IIDIStorage := recoveredValue167.
    recoveredValue168 := OSGuid.
    recoveredValue169 := (recoveredValue168) fromString: ('{0000000C-0000-0000-C000-000000000046}').
    IIDIStream := recoveredValue169.
    recoveredValue170 := OSGuid.
    recoveredValue171 := (recoveredValue170) fromString: ('{DF0B3D60-548F-101B-8E65-08002B2BD119}').
    IIDISupportErrorInfo := recoveredValue171.
    recoveredValue172 := OSGuid.
    recoveredValue173 := (recoveredValue172) fromString: ('{00020403-0000-0000-C000-000000000046}').
    IIDITypeComp := recoveredValue173.
    recoveredValue174 := OSGuid.
    recoveredValue175 := (recoveredValue174) fromString: ('{00020401-0000-0000-C000-000000000046}').
    IIDITypeInfo := recoveredValue175.
    recoveredValue176 := OSGuid.
    recoveredValue177 := (recoveredValue176) fromString: ('{00020402-0000-0000-C000-000000000046}').
    IIDITypeLib := recoveredValue177.
    recoveredValue178 := OSGuid.
    recoveredValue179 := (recoveredValue178) fromString: ('{0000010D-0000-0000-C000-000000000046}').
    IIDIViewObject := recoveredValue179.
    recoveredValue180 := OSGuid.
    recoveredValue181 := (recoveredValue180) fromString: ('{00000127-0000-0000-C000-000000000046}').
    IIDIViewObject2 := recoveredValue181.
    ^self
! !

