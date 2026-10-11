"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200d7110; bytecode file offset 0x9d39cc"
!EtasScintillaMonitorText methodsFor: 'recovered'!
markError: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SCI_MARKERADD.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1) with: (1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d7130; bytecode file offset 0x9d39ec"
!EtasScintillaMonitorText methodsFor: 'recovered'!
markWarning: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SCI_MARKERADD.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1) with: (2).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d7150; bytecode file offset 0x9d3a0c"
!EtasScintillaMonitorText methodsFor: 'recovered'!
markInformation: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SCI_MARKERADD.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1) with: (3).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d975c; bytecode file offset 0x9d6030"
!EtasScintillaMonitorText methodsFor: 'recovered'!
backgroundColor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asOSRGB.
    (self) bgcolor: (recoveredValue1).
    (self) updateStyles.
    ^self
! !

"ASDBase.ic method 0x20187410; bytecode file offset 0xa83d1c"
!EtasScintillaMonitorText methodsFor: 'recovered'!
sciSetStyleInformationMarkerFrom: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SCI_STARTSTYLING.
    recoveredValue1 := recoveredArg1.
    (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1) with: (31).
    recoveredValue2 := SCI_SETSTYLING.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := STYLE_MARKERINFO.
    (self) scintillaCommand: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20187428; bytecode file offset 0xa83d1c"
!EtasScintillaMonitorText methodsFor: 'recovered'!
sciSetStyleWarningMarkerFrom: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SCI_STARTSTYLING.
    recoveredValue1 := recoveredArg1.
    (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1) with: (31).
    recoveredValue2 := SCI_SETSTYLING.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := STYLE_MARKERWARNING.
    (self) scintillaCommand: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20187440; bytecode file offset 0xa83d1c"
!EtasScintillaMonitorText methodsFor: 'recovered'!
sciSetStyleErrorMarkerFrom: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SCI_STARTSTYLING.
    recoveredValue1 := recoveredArg1.
    (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1) with: (31).
    recoveredValue2 := SCI_SETSTYLING.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := STYLE_MARKERERROR.
    (self) scintillaCommand: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20187458; bytecode file offset 0xa83d1c"
!EtasScintillaMonitorText methodsFor: 'recovered'!
sciSetStyleHyperlikFrom: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SCI_STARTSTYLING.
    recoveredValue1 := recoveredArg1.
    (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1) with: (31).
    recoveredValue2 := SCI_SETSTYLING.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := STYLE_HOTSPOT.
    (self) scintillaCommand: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20208560; bytecode file offset 0xb04e20"
!EtasScintillaMonitorText methodsFor: 'recovered'!
insertAndShow: recoveredArg1 value: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := recoveredArg2.
    recoveredBlock4Value2 := super insertAndShow: (recoveredBlock4Value0) value: (recoveredBlock4Value1).
    recoveredBlock4Value3 := recoveredBlock4Value2.
    recoveredLocal1 := recoveredBlock4Value3.
    recoveredBlock4Value2
].
    (self) doWithEnabledWidget: (recoveredValue0).
    recoveredValue1 := recoveredLocal1.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20215d30; bytecode file offset 0xb125f0"
!EtasScintillaMonitorText methodsFor: 'recovered'!
sciAddText: recoveredArg1 length: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 |
    recoveredBlock4Value0 := SCI_ADDTEXT.
    recoveredBlock4Value1 := recoveredArg2.
    recoveredBlock4Value2 := recoveredArg1.
    recoveredBlock4Value3 := (self) scintillaCommand: (recoveredBlock4Value0) with: (recoveredBlock4Value1) with: (recoveredBlock4Value2).
    recoveredBlock4Value4 := recoveredBlock4Value3.
    recoveredLocal1 := recoveredBlock4Value4.
    recoveredBlock4Value3
].
    (self) doWithEnabledWidget: (recoveredValue0).
    recoveredValue1 := recoveredLocal1.
    ^recoveredValue1
! !

"ASDBase.ic method 0x202214d8; bytecode file offset 0xb1ddb4"
!EtasScintillaMonitorText methodsFor: 'recovered'!
sciAddText: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 |
    recoveredBlock4Value0 := SCI_ADDTEXT.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := (recoveredBlock4Value1) size.
    recoveredBlock4Value3 := recoveredArg1.
    recoveredBlock4Value4 := (self) scintillaCommand: (recoveredBlock4Value0) with: (recoveredBlock4Value2) with: (recoveredBlock4Value3).
    recoveredBlock4Value5 := recoveredBlock4Value4.
    recoveredLocal1 := recoveredBlock4Value5.
    recoveredBlock4Value4
].
    (self) doWithEnabledWidget: (recoveredValue0).
    recoveredValue1 := recoveredLocal1.
    ^recoveredValue1
! !

"ASDBase.ic method 0x202214f0; bytecode file offset 0xb1ddb4"
!EtasScintillaMonitorText methodsFor: 'recovered'!
sciAppendText: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 |
    recoveredBlock4Value0 := SCI_APPENDTEXT.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := (recoveredBlock4Value1) size.
    recoveredBlock4Value3 := recoveredArg1.
    recoveredBlock4Value4 := (self) scintillaCommand: (recoveredBlock4Value0) with: (recoveredBlock4Value2) with: (recoveredBlock4Value3).
    recoveredBlock4Value5 := recoveredBlock4Value4.
    recoveredLocal1 := recoveredBlock4Value5.
    recoveredBlock4Value4
].
    (self) doWithEnabledWidget: (recoveredValue0).
    recoveredValue1 := recoveredLocal1.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2025e460; bytecode file offset 0xb5ad3c"
!EtasScintillaMonitorText methodsFor: 'recovered'!
addHyperlinkStyle
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SCI_STYLESETHOTSPOT.
    recoveredValue1 := STYLE_HOTSPOT.
    (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1) with: (true).
    recoveredValue2 := SCI_SETHOTSPOTACTIVEUNDERLINE.
    (self) scintillaCommand: (recoveredValue2) with: (true).
    recoveredValue3 := SCI_SETHOTSPOTACTIVEFORE.
    recoveredValue4 := CgRGBColor.
    recoveredValue5 := (recoveredValue4) blue.
    recoveredValue6 := (recoveredValue5) asOSRGB.
    (self) scintillaCommand: (recoveredValue3) with: (true) with: (recoveredValue6).
    recoveredValue7 := SCI_SETHOTSPOTSINGLELINE.
    (self) scintillaCommand: (recoveredValue7) with: (true).
    ^self
! !

"ASDBase.ic method 0x20274a2c; bytecode file offset 0xb71304"
!EtasScintillaMonitorText methodsFor: 'recovered'!
addMarkerErrorStyle
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := SCI_STYLESETFORE.
    recoveredValue1 := STYLE_MARKERERROR.
    recoveredValue2 := ASDGeneralOptions.
    recoveredValue3 := (recoveredValue2) instance.
    recoveredValue4 := (recoveredValue3) optionMonitorErrorColor.
    (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1) with: (recoveredValue4).
    recoveredValue5 := SCI_MARKERDEFINE.
    recoveredValue6 := SC_MARK_SHORTARROW.
    (self) scintillaCommand: (recoveredValue5) with: (1) with: (recoveredValue6).
    recoveredValue7 := SCI_MARKERSETBACK.
    recoveredValue8 := ASDGeneralOptions.
    recoveredValue9 := (recoveredValue8) instance.
    recoveredValue10 := (recoveredValue9) optionMonitorErrorColor.
    (self) scintillaCommand: (recoveredValue7) with: (1) with: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x20274a84; bytecode file offset 0xb7135c"
!EtasScintillaMonitorText methodsFor: 'recovered'!
addMarkerWarningStyle
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := SCI_STYLESETFORE.
    recoveredValue1 := STYLE_MARKERWARNING.
    recoveredValue2 := ASDGeneralOptions.
    recoveredValue3 := (recoveredValue2) instance.
    recoveredValue4 := (recoveredValue3) optionMonitorWarningColor.
    (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1) with: (recoveredValue4).
    recoveredValue5 := SCI_MARKERDEFINE.
    recoveredValue6 := SC_MARK_SHORTARROW.
    (self) scintillaCommand: (recoveredValue5) with: (2) with: (recoveredValue6).
    recoveredValue7 := SCI_MARKERSETBACK.
    recoveredValue8 := ASDGeneralOptions.
    recoveredValue9 := (recoveredValue8) instance.
    recoveredValue10 := (recoveredValue9) optionMonitorWarningColor.
    (self) scintillaCommand: (recoveredValue7) with: (2) with: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x20274adc; bytecode file offset 0xb713b4"
!EtasScintillaMonitorText methodsFor: 'recovered'!
addMarkerInfoStyle
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := SCI_STYLESETFORE.
    recoveredValue1 := STYLE_MARKERINFO.
    recoveredValue2 := ASDGeneralOptions.
    recoveredValue3 := (recoveredValue2) instance.
    recoveredValue4 := (recoveredValue3) optionMonitorInformationColor.
    (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1) with: (recoveredValue4).
    recoveredValue5 := SCI_MARKERDEFINE.
    recoveredValue6 := SC_MARK_SHORTARROW.
    (self) scintillaCommand: (recoveredValue5) with: (3) with: (recoveredValue6).
    recoveredValue7 := SCI_MARKERSETBACK.
    recoveredValue8 := ASDGeneralOptions.
    recoveredValue9 := (recoveredValue8) instance.
    recoveredValue10 := (recoveredValue9) optionMonitorInformationColor.
    (self) scintillaCommand: (recoveredValue7) with: (3) with: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x2050f4b4; bytecode file offset 0xe0bd98"
!EtasScintillaMonitorText methodsFor: 'recovered'!
sciUrlFromPosition: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := SCI_GETSTYLEAT.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) scintillaCommand: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) sciLineFromPosition: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := String.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := SCI_LINELENGTH.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) scintillaCommand: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := SCI_GETLINE.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) scintillaCommand: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) sciPositionFromLine: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredPC := 136.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := SCI_GETSTYLEAT.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := (recoveredStack2) scintillaCommand: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock105Value0 recoveredBlock105Value1 recoveredBlock105Value2 recoveredBlock105Value3 |
    recoveredBlock105Value0 := recoveredLocal1.
    recoveredBlock105Value1 := (recoveredBlock105Value0) + (1).
    recoveredLocal5 := recoveredBlock105Value1.
    recoveredBlock105Value2 := recoveredLocal5.
    recoveredBlock105Value3 := recoveredBlock105Value2.
    recoveredLocal4 := recoveredBlock105Value3.
    recoveredBlock105Value2
].
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack2) ifNil: (recoveredStack3).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 80] ifFalse: [recoveredPC := 165]] ifFalse: [recoveredPC := 139].
        ].
        recoveredStep = 139 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 161] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20518118; bytecode file offset 0xe14a40"
!EtasScintillaMonitorText methodsFor: 'recovered'!
scintillaNotification: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) code.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := SCN_HOTSPOTCLICK.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 181].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15Stack4 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := recoveredArg1.
            recoveredBlock15PC := 25.
        ].
        recoveredBlock15Step = 25 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) position.
            recoveredBlock15PC := 26.
        ].
        recoveredBlock15Step = 26 ifTrue: [
            recoveredBlock15Stack0 := (recoveredBlock15Stack0) sciUrlFromPosition: (recoveredBlock15Stack1).
            recoveredBlock15PC := 27.
        ].
        recoveredBlock15Step = 27 ifTrue: [
            recoveredLocal1 := recoveredBlock15Stack0.
            recoveredBlock15PC := 30.
        ].
        recoveredBlock15Step = 30 ifTrue: [
            recoveredBlock15Stack0 := recoveredLocal1.
            recoveredBlock15PC := 33.
        ].
        recoveredBlock15Step = 33 ifTrue: [
            recoveredBlock15Stack1 := 'asd://'.
            recoveredBlock15PC := 35.
        ].
        recoveredBlock15Step = 35 ifTrue: [
            recoveredBlock15Stack0 := (recoveredBlock15Stack0) startsWith: (recoveredBlock15Stack1).
            recoveredBlock15PC := 37.
        ].
        recoveredBlock15Step = 37 ifTrue: [
            (recoveredBlock15Stack0) ifTrue: [recoveredBlock15PC := 40] ifFalse: [recoveredBlock15PC := 63].
        ].
        recoveredBlock15Step = 40 ifTrue: [
            recoveredBlock15Stack0 := self.
            recoveredBlock15PC := 41.
        ].
        recoveredBlock15Step = 41 ifTrue: [
            recoveredBlock15Stack1 := self.
            recoveredBlock15PC := 42.
        ].
        recoveredBlock15Step = 42 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) sciGetLength.
            recoveredBlock15PC := 44.
        ].
        recoveredBlock15Step = 44 ifTrue: [
            (recoveredBlock15Stack0) sciSetCurrentPosition: (recoveredBlock15Stack1).
            recoveredBlock15PC := 46.
        ].
        recoveredBlock15Step = 46 ifTrue: [
            recoveredBlock15Stack0 := MainController.
            recoveredBlock15PC := 48.
        ].
        recoveredBlock15Step = 48 ifTrue: [
            recoveredBlock15Stack0 := (recoveredBlock15Stack0) navigationManager.
            recoveredBlock15PC := 50.
        ].
        recoveredBlock15Step = 50 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal1.
            recoveredBlock15PC := 53.
        ].
        recoveredBlock15Step = 53 ifTrue: [
            (recoveredBlock15Stack0) openAsdLink: (recoveredBlock15Stack1).
            recoveredBlock15PC := 55.
        ].
        recoveredBlock15Step = 55 ifTrue: [
            recoveredBlock15Stack0 := self.
            recoveredBlock15PC := 56.
        ].
        recoveredBlock15Step = 56 ifTrue: [
            recoveredBlock15Stack1 := self.
            recoveredBlock15PC := 57.
        ].
        recoveredBlock15Step = 57 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) sciGetLength.
            recoveredBlock15PC := 59.
        ].
        recoveredBlock15Step = 59 ifTrue: [
            (recoveredBlock15Stack0) sciSetCurrentPosition: (recoveredBlock15Stack1).
            recoveredBlock15PC := 61.
        ].
        recoveredBlock15Step = 61 ifTrue: [
            recoveredBlock15Stack0 := self.
            recoveredBlock15PC := 62.
        ].
        recoveredBlock15Step = 62 ifTrue: [
            ^recoveredBlock15Stack0
        ].
        recoveredBlock15Step = 63 ifTrue: [
            recoveredBlock15Stack0 := recoveredLocal1.
            recoveredBlock15PC := 66.
        ].
        recoveredBlock15Step = 66 ifTrue: [
            recoveredBlock15Stack1 := 'ascet://'.
            recoveredBlock15PC := 68.
        ].
        recoveredBlock15Step = 68 ifTrue: [
            recoveredBlock15Stack0 := (recoveredBlock15Stack0) startsWith: (recoveredBlock15Stack1).
            recoveredBlock15PC := 70.
        ].
        recoveredBlock15Step = 70 ifTrue: [
            (recoveredBlock15Stack0) ifTrue: [recoveredBlock15PC := 74] ifFalse: [recoveredBlock15PC := 98].
        ].
        recoveredBlock15Step = 74 ifTrue: [
            recoveredBlock15Stack0 := self.
            recoveredBlock15PC := 75.
        ].
        recoveredBlock15Step = 75 ifTrue: [
            recoveredBlock15Stack1 := self.
            recoveredBlock15PC := 76.
        ].
        recoveredBlock15Step = 76 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) sciGetLength.
            recoveredBlock15PC := 78.
        ].
        recoveredBlock15Step = 78 ifTrue: [
            (recoveredBlock15Stack0) sciSetCurrentPosition: (recoveredBlock15Stack1).
            recoveredBlock15PC := 80.
        ].
        recoveredBlock15Step = 80 ifTrue: [
            recoveredBlock15Stack0 := MainController.
            recoveredBlock15PC := 82.
        ].
        recoveredBlock15Step = 82 ifTrue: [
            recoveredBlock15Stack0 := (recoveredBlock15Stack0) navigationManager.
            recoveredBlock15PC := 84.
        ].
        recoveredBlock15Step = 84 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal1.
            recoveredBlock15PC := 87.
        ].
        recoveredBlock15Step = 87 ifTrue: [
            recoveredBlock15Stack2 := true.
            recoveredBlock15PC := 88.
        ].
        recoveredBlock15Step = 88 ifTrue: [
            (recoveredBlock15Stack0) openAscetLink: (recoveredBlock15Stack1) silentMode: (recoveredBlock15Stack2).
            recoveredBlock15PC := 90.
        ].
        recoveredBlock15Step = 90 ifTrue: [
            recoveredBlock15Stack0 := self.
            recoveredBlock15PC := 91.
        ].
        recoveredBlock15Step = 91 ifTrue: [
            recoveredBlock15Stack1 := self.
            recoveredBlock15PC := 92.
        ].
        recoveredBlock15Step = 92 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) sciGetLength.
            recoveredBlock15PC := 94.
        ].
        recoveredBlock15Step = 94 ifTrue: [
            (recoveredBlock15Stack0) sciSetCurrentPosition: (recoveredBlock15Stack1).
            recoveredBlock15PC := 96.
        ].
        recoveredBlock15Step = 96 ifTrue: [
            recoveredBlock15Stack0 := self.
            recoveredBlock15PC := 97.
        ].
        recoveredBlock15Step = 97 ifTrue: [
            ^recoveredBlock15Stack0
        ].
        recoveredBlock15Step = 98 ifTrue: [
            recoveredBlock15Stack0 := HkeyClassesRootHandle.
            recoveredBlock15PC := 100.
        ].
        recoveredBlock15Step = 100 ifTrue: [
            recoveredBlock15Stack1 := 'htmlfile\shell\open\command'.
            recoveredBlock15PC := 102.
        ].
        recoveredBlock15Step = 102 ifTrue: [
            recoveredBlock15Stack0 := (recoveredBlock15Stack0) regOpenKey: (recoveredBlock15Stack1).
            recoveredBlock15PC := 104.
        ].
        recoveredBlock15Step = 104 ifTrue: [
            recoveredLocal2 := recoveredBlock15Stack0.
            recoveredBlock15PC := 107.
        ].
        recoveredBlock15Step = 107 ifTrue: [
            recoveredBlock15Stack0 := recoveredLocal2.
            recoveredBlock15PC := 110.
        ].
        recoveredBlock15Step = 110 ifTrue: [
            (recoveredBlock15Stack0 == nil) ifTrue: [recoveredBlock15PC := 137] ifFalse: [recoveredBlock15PC := 114].
        ].
        recoveredBlock15Step = 114 ifTrue: [
            recoveredBlock15Stack0 := recoveredLocal2.
            recoveredBlock15PC := 117.
        ].
        recoveredBlock15Step = 117 ifTrue: [
            recoveredBlock15Stack0 := (recoveredBlock15Stack0) isError.
            recoveredBlock15PC := 119.
        ].
        recoveredBlock15Step = 119 ifTrue: [
            (recoveredBlock15Stack0) ifTrue: [recoveredBlock15PC := 137] ifFalse: [recoveredBlock15PC := 122].
        ].
        recoveredBlock15Step = 122 ifTrue: [
            recoveredBlock15Stack0 := recoveredLocal2.
            recoveredBlock15PC := 125.
        ].
        recoveredBlock15Step = 125 ifTrue: [
            recoveredBlock15Stack1 := ''.
            recoveredBlock15PC := 127.
        ].
        recoveredBlock15Step = 127 ifTrue: [
            recoveredBlock15Stack0 := (recoveredBlock15Stack0) regQueryValueEx: (recoveredBlock15Stack1).
            recoveredBlock15PC := 129.
        ].
        recoveredBlock15Step = 129 ifTrue: [
            recoveredLocal3 := recoveredBlock15Stack0.
            recoveredBlock15PC := 132.
        ].
        recoveredBlock15Step = 132 ifTrue: [
            recoveredBlock15Stack0 := recoveredLocal2.
            recoveredBlock15PC := 135.
        ].
        recoveredBlock15Step = 135 ifTrue: [
            (recoveredBlock15Stack0) regCloseKey.
            recoveredBlock15PC := 137.
        ].
        recoveredBlock15Step = 137 ifTrue: [
            recoveredBlock15Stack0 := nil.
            recoveredBlock15PC := 138.
        ].
        recoveredBlock15Step = 138 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal3.
            recoveredBlock15PC := 141.
        ].
        recoveredBlock15Step = 141 ifTrue: [
            (recoveredBlock15Stack1 == nil) ifTrue: [recoveredBlock15PC := 176] ifFalse: [recoveredBlock15PC := 144].
        ].
        recoveredBlock15Step = 144 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal3.
            recoveredBlock15PC := 147.
        ].
        recoveredBlock15Step = 147 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) isError.
            recoveredBlock15PC := 149.
        ].
        recoveredBlock15Step = 149 ifTrue: [
            (recoveredBlock15Stack1) ifTrue: [recoveredBlock15PC := 176] ifFalse: [recoveredBlock15PC := 152].
        ].
        recoveredBlock15Step = 152 ifTrue: [
            recoveredBlock15PC := 153.
        ].
        recoveredBlock15Step = 153 ifTrue: [
            recoveredBlock15Stack0 := OSCall.
            recoveredBlock15PC := 155.
        ].
        recoveredBlock15Step = 155 ifTrue: [
            recoveredBlock15Stack0 := (recoveredBlock15Stack0) new.
            recoveredBlock15PC := 157.
        ].
        recoveredBlock15Step = 157 ifTrue: [
            recoveredBlock15Stack1 := nil.
            recoveredBlock15PC := 158.
        ].
        recoveredBlock15Step = 158 ifTrue: [
            recoveredBlock15Stack2 := recoveredLocal3.
            recoveredBlock15PC := 161.
        ].
        recoveredBlock15Step = 161 ifTrue: [
            recoveredBlock15Stack3 := ' "'.
            recoveredBlock15PC := 163.
        ].
        recoveredBlock15Step = 163 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) , (recoveredBlock15Stack3).
            recoveredBlock15PC := 165.
        ].
        recoveredBlock15Step = 165 ifTrue: [
            recoveredBlock15Stack3 := recoveredLocal1.
            recoveredBlock15PC := 168.
        ].
        recoveredBlock15Step = 168 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) , (recoveredBlock15Stack3).
            recoveredBlock15PC := 170.
        ].
        recoveredBlock15Step = 170 ifTrue: [
            recoveredBlock15Stack3 := '"'.
            recoveredBlock15PC := 172.
        ].
        recoveredBlock15Step = 172 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) , (recoveredBlock15Stack3).
            recoveredBlock15PC := 174.
        ].
        recoveredBlock15Step = 174 ifTrue: [
            recoveredBlock15Stack0 := (recoveredBlock15Stack0) createProcess: (recoveredBlock15Stack1) commandLine: (recoveredBlock15Stack2).
            recoveredBlock15PC := 176.
        ].
        recoveredBlock15Step = 176 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack0.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack1) suspendNotifications: (recoveredStack2).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := super scintillaNotification: (recoveredStack1).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

