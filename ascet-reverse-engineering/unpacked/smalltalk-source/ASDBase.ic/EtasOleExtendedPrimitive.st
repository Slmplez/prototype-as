"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200001d0; bytecode file offset 0x8ffcfc"
!EtasOleExtendedPrimitive methodsFor: 'recovered'!
registerOleEventHandlers
    ^self
! !

"ASDBase.ic method 0x20000530; bytecode file offset 0x8ffcfc"
!EtasOleExtendedPrimitive methodsFor: 'recovered'!
postClosingActivities
    ^self
! !

"ASDBase.ic method 0x200089b4; bytecode file offset 0x908be4"
!EtasOleExtendedPrimitive methodsFor: 'recovered'!
oleWidget
    | recoveredValue0 |
    recoveredValue0 := (self) primaryWidget.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002b7c4; bytecode file offset 0x934580"
!EtasOleExtendedPrimitive methodsFor: 'recovered'!
clientName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) clientName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030f94; bytecode file offset 0x934580"
!EtasOleExtendedPrimitive methodsFor: 'recovered'!
licenseKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) licenseKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003dfd8; bytecode file offset 0x93bf94"
!EtasOleExtendedPrimitive methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20059308; bytecode file offset 0x956284"
!EtasOleExtendedPrimitive methodsFor: 'recovered'!
propertyAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) propertyAt: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20064f14; bytecode file offset 0x961970"
!EtasOleExtendedPrimitive methodsFor: 'recovered'!
preClosingActivities
    | recoveredValue0 |
    recoveredValue0 := (self) primaryWidget.
    (recoveredValue0) releaseObject.
    ^self
! !

"ASDBase.ic method 0x2006df00; bytecode file offset 0x96a9dc"
!EtasOleExtendedPrimitive methodsFor: 'recovered'!
oleControlWrapper
    | recoveredValue0 |
    recoveredValue0 := oleControlWrapper.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009a6f8; bytecode file offset 0x997194"
!EtasOleExtendedPrimitive methodsFor: 'recovered'!
propertyAt: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) propertyAt: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c43c8; bytecode file offset 0x9c11bc"
!EtasOleExtendedPrimitive methodsFor: 'recovered'!
oleControlWrapper: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    oleControlWrapper := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ca6d4; bytecode file offset 0x9c7020"
!EtasOleExtendedPrimitive methodsFor: 'recovered'!
invoke: recoveredArg1 withArguments: recoveredArg2 returnType: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) invoke: (recoveredValue1) withArguments: (recoveredValue2) returnType: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d643c; bytecode file offset 0x9d3134"
!EtasOleExtendedPrimitive methodsFor: 'recovered'!
initializeAfterCreate
    super initializeAfterCreate.
    (self) registerOleEventHandlers.
    ^self
! !

"ASDBase.ic method 0x200f27dc; bytecode file offset 0x9ef148"
!EtasOleExtendedPrimitive methodsFor: 'recovered'!
isOleControl
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) primaryWidget.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) primaryWidget.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOleControl.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200f281c; bytecode file offset 0x9ef148"
!EtasOleExtendedPrimitive methodsFor: 'recovered'!
isConnected
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) primaryWidget.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) primaryWidget.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isConnected.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2026a5b4; bytecode file offset 0xb66e88"
!EtasOleExtendedPrimitive methodsFor: 'recovered'!
primaryWidgetCreateArgBlock
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) class.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) clientName.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            (recoveredBlock4Stack2 == nil) ifTrue: [recoveredBlock4PC := 38] ifFalse: [recoveredBlock4PC := 18].
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Arg1.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack3 := self.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack3 := (recoveredBlock4Stack3) clientName.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            (recoveredBlock4Stack2) clientName: (recoveredBlock4Stack3).
            recoveredBlock4Stack2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack3 := self.
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Stack3 := (recoveredBlock4Stack3) licenseKey.
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            (recoveredBlock4Stack2) licenseKey: (recoveredBlock4Stack3).
            recoveredBlock4Stack2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            recoveredBlock4Stack3 := self.
            recoveredBlock4PC := 32.
        ].
        recoveredBlock4Step = 32 ifTrue: [
            (recoveredBlock4Stack2) ambientPropertyReceiver: (recoveredBlock4Stack3).
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Stack2 := 'dispidAmbientPropertyAt:'.
            recoveredBlock4PC := 36.
        ].
        recoveredBlock4Step = 36 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) ambientPropertySelector: (recoveredBlock4Stack2).
            recoveredBlock4PC := 38.
        ].
        recoveredBlock4Step = 38 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    ^recoveredValue0
! !

"ASDBase.ic method 0x20383f14; bytecode file offset 0xc80814"
!EtasOleExtendedPrimitive methodsFor: 'recovered'!
createPrimaryWidget: recoveredArg1 parent: recoveredArg2 argBlock: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) oleControlWrapperClass.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := ('abtWrapper_') , (recoveredValue2).
    recoveredValue4 := (recoveredValue1) abtCreatePart: (recoveredValue3) parent: (nil).
    (self) oleControlWrapper: (recoveredValue4).
    recoveredValue5 := (self) parent.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 recoveredBlock24Value5 recoveredBlock24Value6 recoveredBlock24Value7 recoveredBlock24Value8 recoveredBlock24Value9 recoveredBlock24Value10 recoveredBlock24Value11 recoveredBlock24Value12 recoveredBlock24Value13 |
    recoveredBlock24Value0 := recoveredArg3.
    recoveredBlock24Value1 := recoveredBlock24Arg1.
    (recoveredBlock24Value0) value: (recoveredBlock24Value1).
    recoveredBlock24Value2 := (self) oleControlWrapper.
    recoveredBlock24Value3 := recoveredBlock24Value2.
    recoveredBlock24Value4 := recoveredBlock24Arg1.
    (recoveredBlock24Value3) setOleWidget: (recoveredBlock24Value4).
    recoveredBlock24Value5 := recoveredBlock24Arg1.
    (recoveredBlock24Value2) initializeBasicViewWidget: (recoveredBlock24Value5).
    recoveredBlock24Value6 := recoveredBlock24Arg1.
    recoveredBlock24Value7 := recoveredBlock24Value6.
    recoveredBlock24Value8 := (self) clientName.
    (recoveredBlock24Value7) clientName: (recoveredBlock24Value8).
    recoveredBlock24Value9 := recoveredBlock24Value6.
    recoveredBlock24Value10 := (self) licenseKey.
    (recoveredBlock24Value9) licenseKey: (recoveredBlock24Value10).
    recoveredBlock24Value11 := recoveredBlock24Value6.
    recoveredBlock24Value12 := (self) oleControlWrapper.
    (recoveredBlock24Value11) ambientPropertyReceiver: (recoveredBlock24Value12).
    recoveredBlock24Value13 := (recoveredBlock24Value6) ambientPropertySelector: ('dispidAmbientPropertyAt:').
    recoveredBlock24Value13
].
    recoveredValue8 := (recoveredValue5) createEtasOleControl: (recoveredValue6) argBlock: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x2043a6ec; bytecode file offset 0xd36fdc"
!EtasOleExtendedPrimitive methodsFor: 'recovered'!
dispidAmbientPropertyAt: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := DispidAmbientBackcolor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) backgroundColor.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) backgroundColor.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOSRGB.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := DispidAmbientDisplayname.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := DispidAmbientDisplayasdefault.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := DispidAmbientForecolor.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) foregroundColor.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) foregroundColor.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOSRGB.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := DispidAmbientLocaleid.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := LocaleUserDefault.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := DispidAmbientSupportsmnemonics.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := DispidAmbientShowgrabhandles.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := DispidAmbientShowhatching.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := DispidAmbientUidead.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := DispidAmbientUsermode.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

