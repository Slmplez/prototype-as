"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20003844; bytecode file offset 0x649e8"
!SstWSDocLiteralWrappedStyle methodsFor: 'recovered'!
prefixTable
    | recoveredValue0 |
    recoveredValue0 := prefixTable.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200054fc; bytecode file offset 0x665c8"
!SstWSDocLiteralWrappedStyle methodsFor: 'recovered'!
clearTypeName
    | recoveredValue0 |
    recoveredValue0 := (self) class.
    (recoveredValue0) typeName: (nil).
    ^self
! !

"xxx_dyn.ic method 0x20007d74; bytecode file offset 0x68f50"
!SstWSDocLiteralWrappedStyle methodsFor: 'recovered'!
prefixTable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    prefixTable := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20009ad8; bytecode file offset 0x6aba4"
!SstWSDocLiteralWrappedStyle methodsFor: 'recovered'!
notSimpleType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isComplexType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isExtension.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000f340; bytecode file offset 0x70414"
!SstWSDocLiteralWrappedStyle methodsFor: 'recovered'!
typeNameFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isComplexType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) typeName.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isExtension.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) base.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x200140c4; bytecode file offset 0x75194"
!SstWSDocLiteralWrappedStyle methodsFor: 'recovered'!
inputPayloadNamed: recoveredArg1 withArguments: recoveredArg2 message: recoveredArg3 envelope: recoveredArg4 extension: recoveredArg5
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg4.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg5.
    recoveredValue4 := (self) inputPayloadArgumentWrappersFrom: (recoveredValue0) envelope: (recoveredValue1) message: (recoveredValue2) extension: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := recoveredArg4.
    (self) addNamespacesForWrappedElements: (recoveredValue5) fromMessage: (recoveredValue6) toSoapEnvelope: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := recoveredArg3.
    recoveredValue11 := recoveredArg4.
    recoveredValue12 := recoveredArg5.
    recoveredValue13 := (self) payloadNamed: (recoveredValue8) withArguments: (recoveredValue9) message: (recoveredValue10) envelope: (recoveredValue11) extension: (recoveredValue12).
    ^recoveredValue13
! !

"xxx_dyn.ic method 0x2001feb4; bytecode file offset 0x80f94"
!SstWSDocLiteralWrappedStyle methodsFor: 'recovered'!
addNamespacesForWrappedElements: recoveredArg1 fromMessage: recoveredArg2 toSoapEnvelope: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) type.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) isComplexType.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 22] ifFalse: [recoveredBlock7PC := 57].
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) type.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) hasContent.
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 28] ifFalse: [recoveredBlock7PC := 57].
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) type.
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) elements.
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredLocal3 := recoveredBlock7Stack1.
            recoveredBlock7PC := 35.
        ].
        recoveredBlock7Step = 35 ifTrue: [
            recoveredBlock7Stack1 := recoveredLocal3.
            recoveredBlock7PC := 38.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7Stack2 := [:recoveredBlock7Block38Arg1 | 
    | recoveredBlock7Block38Value0 recoveredBlock7Block38Value1 recoveredBlock7Block38Value2 recoveredBlock7Block38Value3 |
    recoveredBlock7Block38Value0 := recoveredBlock7Block38Arg1.
    recoveredBlock7Block38Value1 := recoveredArg3.
    recoveredBlock7Block38Value2 := recoveredArg2.
    recoveredBlock7Block38Value3 := (self) addNamespaces: (recoveredBlock7Block38Value0) envelope: (recoveredBlock7Block38Value1) message: (recoveredBlock7Block38Value2).
    recoveredBlock7Block38Value3
].
            recoveredBlock7PC := 55.
        ].
        recoveredBlock7Step = 55 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) do: (recoveredBlock7Stack2).
            recoveredBlock7PC := 57.
        ].
        recoveredBlock7Step = 57 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    (self) clearTypeName.
    ^self
! !

"xxx_dyn.ic method 0x2002baa4; bytecode file offset 0x8cba4"
!SstWSDocLiteralWrappedStyle methodsFor: 'recovered'!
addNamespaces: recoveredArg1 envelope: recoveredArg2 message: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isContentContainer.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) elements.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16Stack4 recoveredBlock16Stack5 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 23.
        ].
        recoveredBlock16Step = 23 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) type.
            recoveredBlock16PC := 24.
        ].
        recoveredBlock16Step = 24 ifTrue: [
            (recoveredBlock16Stack1 == nil) ifTrue: [recoveredBlock16PC := 138] ifFalse: [recoveredBlock16PC := 28].
        ].
        recoveredBlock16Step = 28 ifTrue: [
            recoveredBlock16Stack1 := self.
            recoveredBlock16PC := 29.
        ].
        recoveredBlock16Step = 29 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 30.
        ].
        recoveredBlock16Step = 30 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) notSimpleType: (recoveredBlock16Stack2).
            recoveredBlock16PC := 31.
        ].
        recoveredBlock16Step = 31 ifTrue: [
            (recoveredBlock16Stack1) ifTrue: [recoveredBlock16PC := 34] ifFalse: [recoveredBlock16PC := 124].
        ].
        recoveredBlock16Step = 34 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 35.
        ].
        recoveredBlock16Step = 35 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) type.
            recoveredBlock16PC := 36.
        ].
        recoveredBlock16Step = 36 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) hasContent.
            recoveredBlock16PC := 38.
        ].
        recoveredBlock16Step = 38 ifTrue: [
            (recoveredBlock16Stack1) ifTrue: [recoveredBlock16PC := 42] ifFalse: [recoveredBlock16PC := 124].
        ].
        recoveredBlock16Step = 42 ifTrue: [
            recoveredBlock16Stack1 := nil.
            recoveredBlock16PC := 43.
        ].
        recoveredBlock16Step = 43 ifTrue: [
            recoveredBlock16Stack2 := self.
            recoveredBlock16PC := 44.
        ].
        recoveredBlock16Step = 44 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Arg1.
            recoveredBlock16PC := 45.
        ].
        recoveredBlock16Step = 45 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) typeNameFor: (recoveredBlock16Stack3).
            recoveredBlock16PC := 47.
        ].
        recoveredBlock16Step = 47 ifTrue: [
            recoveredBlock16Stack3 := self.
            recoveredBlock16PC := 48.
        ].
        recoveredBlock16Step = 48 ifTrue: [
            recoveredBlock16Stack3 := (recoveredBlock16Stack3) class.
            recoveredBlock16PC := 50.
        ].
        recoveredBlock16Step = 50 ifTrue: [
            recoveredBlock16Stack3 := (recoveredBlock16Stack3) typeName.
            recoveredBlock16PC := 52.
        ].
        recoveredBlock16Step = 52 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) = (recoveredBlock16Stack3).
            recoveredBlock16PC := 53.
        ].
        recoveredBlock16Step = 53 ifTrue: [
            (recoveredBlock16Stack2) ifTrue: [recoveredBlock16PC := 121] ifFalse: [recoveredBlock16PC := 56].
        ].
        recoveredBlock16Step = 56 ifTrue: [
            recoveredBlock16PC := 57.
        ].
        recoveredBlock16Step = 57 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 58.
        ].
        recoveredBlock16Step = 58 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) isExtension.
            recoveredBlock16PC := 60.
        ].
        recoveredBlock16Step = 60 ifTrue: [
            (recoveredBlock16Stack1) ifTrue: [recoveredBlock16PC := 64] ifFalse: [recoveredBlock16PC := 78].
        ].
        recoveredBlock16Step = 64 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 65.
        ].
        recoveredBlock16Step = 65 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) content.
            recoveredBlock16PC := 67.
        ].
        recoveredBlock16Step = 67 ifTrue: [
            recoveredBlock16Stack2 := 1.
            recoveredBlock16PC := 69.
        ].
        recoveredBlock16Step = 69 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) at: (recoveredBlock16Stack2).
            recoveredBlock16PC := 71.
        ].
        recoveredBlock16Step = 71 ifTrue: [
            recoveredLocal3 := recoveredBlock16Stack1.
            recoveredBlock16PC := 74.
        ].
        recoveredBlock16Step = 74 ifTrue: [
            recoveredBlock16PC := 88.
        ].
        recoveredBlock16Step = 78 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 79.
        ].
        recoveredBlock16Step = 79 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) type.
            recoveredBlock16PC := 80.
        ].
        recoveredBlock16Step = 80 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) elements.
            recoveredBlock16PC := 81.
        ].
        recoveredBlock16Step = 81 ifTrue: [
            recoveredBlock16Stack2 := 1.
            recoveredBlock16PC := 83.
        ].
        recoveredBlock16Step = 83 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) at: (recoveredBlock16Stack2).
            recoveredBlock16PC := 85.
        ].
        recoveredBlock16Step = 85 ifTrue: [
            recoveredLocal3 := recoveredBlock16Stack1.
            recoveredBlock16PC := 88.
        ].
        recoveredBlock16Step = 88 ifTrue: [
            recoveredBlock16Stack1 := self.
            recoveredBlock16PC := 89.
        ].
        recoveredBlock16Step = 89 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) class.
            recoveredBlock16PC := 91.
        ].
        recoveredBlock16Step = 91 ifTrue: [
            recoveredBlock16Stack2 := self.
            recoveredBlock16PC := 92.
        ].
        recoveredBlock16Step = 92 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Arg1.
            recoveredBlock16PC := 93.
        ].
        recoveredBlock16Step = 93 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) typeNameFor: (recoveredBlock16Stack3).
            recoveredBlock16PC := 95.
        ].
        recoveredBlock16Step = 95 ifTrue: [
            (recoveredBlock16Stack1) typeName: (recoveredBlock16Stack2).
            recoveredBlock16PC := 97.
        ].
        recoveredBlock16Step = 97 ifTrue: [
            recoveredBlock16Stack1 := self.
            recoveredBlock16PC := 98.
        ].
        recoveredBlock16Step = 98 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 99.
        ].
        recoveredBlock16Step = 99 ifTrue: [
            recoveredBlock16Stack3 := recoveredArg2.
            recoveredBlock16PC := 102.
        ].
        recoveredBlock16Step = 102 ifTrue: [
            recoveredBlock16Stack4 := recoveredArg3.
            recoveredBlock16PC := 105.
        ].
        recoveredBlock16Step = 105 ifTrue: [
            (recoveredBlock16Stack1) addNamespaceForElement: (recoveredBlock16Stack2) envelope: (recoveredBlock16Stack3) message: (recoveredBlock16Stack4).
            recoveredBlock16PC := 108.
        ].
        recoveredBlock16Step = 108 ifTrue: [
            recoveredBlock16Stack1 := self.
            recoveredBlock16PC := 109.
        ].
        recoveredBlock16Step = 109 ifTrue: [
            recoveredBlock16Stack2 := recoveredLocal3.
            recoveredBlock16PC := 112.
        ].
        recoveredBlock16Step = 112 ifTrue: [
            recoveredBlock16Stack3 := recoveredArg2.
            recoveredBlock16PC := 115.
        ].
        recoveredBlock16Step = 115 ifTrue: [
            recoveredBlock16Stack4 := recoveredArg3.
            recoveredBlock16PC := 118.
        ].
        recoveredBlock16Step = 118 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) addNamespaces: (recoveredBlock16Stack2) envelope: (recoveredBlock16Stack3) message: (recoveredBlock16Stack4).
            recoveredBlock16PC := 121.
        ].
        recoveredBlock16Step = 121 ifTrue: [
            recoveredBlock16PC := 135.
        ].
        recoveredBlock16Step = 124 ifTrue: [
            recoveredBlock16Stack1 := self.
            recoveredBlock16PC := 125.
        ].
        recoveredBlock16Step = 125 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 126.
        ].
        recoveredBlock16Step = 126 ifTrue: [
            recoveredBlock16Stack3 := recoveredArg2.
            recoveredBlock16PC := 129.
        ].
        recoveredBlock16Step = 129 ifTrue: [
            recoveredBlock16Stack4 := recoveredArg3.
            recoveredBlock16PC := 132.
        ].
        recoveredBlock16Step = 132 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) addNamespaceForElement: (recoveredBlock16Stack2) envelope: (recoveredBlock16Stack3) message: (recoveredBlock16Stack4).
            recoveredBlock16PC := 135.
        ].
        recoveredBlock16Step = 135 ifTrue: [
            recoveredBlock16PC := 149.
        ].
        recoveredBlock16Step = 138 ifTrue: [
            recoveredBlock16Stack1 := self.
            recoveredBlock16PC := 139.
        ].
        recoveredBlock16Step = 139 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 140.
        ].
        recoveredBlock16Step = 140 ifTrue: [
            recoveredBlock16Stack3 := recoveredArg2.
            recoveredBlock16PC := 143.
        ].
        recoveredBlock16Step = 143 ifTrue: [
            recoveredBlock16Stack4 := recoveredArg3.
            recoveredBlock16PC := 146.
        ].
        recoveredBlock16Step = 146 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) addNamespaceForElement: (recoveredBlock16Stack2) envelope: (recoveredBlock16Stack3) message: (recoveredBlock16Stack4).
            recoveredBlock16PC := 149.
        ].
        recoveredBlock16Step = 149 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2002ed58; bytecode file offset 0x8fe98"
!SstWSDocLiteralWrappedStyle methodsFor: 'recovered'!
addNamespaceForElement: recoveredArg1 envelope: recoveredArg2 message: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) prefixTable: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExtension.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) base.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) getReference.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) ref.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeName.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeName.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 149] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := AbtXmlUtility.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) prefixFor: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) schema.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) namespaceMappings.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock94Stack0 recoveredBlock94Stack1 recoveredBlock94Stack2 recoveredBlock94Stack3 recoveredBlock94Stack4 recoveredBlock94PC recoveredBlock94Step recoveredBlock94Done recoveredBlock94Result |
    recoveredBlock94Stack0 := self.
    recoveredBlock94PC := 100.
    recoveredBlock94Done := false.
    [recoveredBlock94Done not] whileTrue: [
        recoveredBlock94Step := recoveredBlock94PC.
        recoveredBlock94Step = 100 ifTrue: [
            recoveredBlock94Stack1 := nil.
            recoveredBlock94PC := 101.
        ].
        recoveredBlock94Step = 101 ifTrue: [
            recoveredBlock94Stack2 := recoveredArg1.
            recoveredBlock94PC := 104.
        ].
        recoveredBlock94Step = 104 ifTrue: [
            recoveredBlock94Stack2 := (recoveredBlock94Stack2) abtXmlNamespaceMappings.
            recoveredBlock94PC := 106.
        ].
        recoveredBlock94Step = 106 ifTrue: [
            (recoveredBlock94Stack2 == nil) ifTrue: [recoveredBlock94PC := 123] ifFalse: [recoveredBlock94PC := 110].
        ].
        recoveredBlock94Step = 110 ifTrue: [
            recoveredBlock94PC := 111.
        ].
        recoveredBlock94Step = 111 ifTrue: [
            recoveredBlock94Stack1 := recoveredArg1.
            recoveredBlock94PC := 114.
        ].
        recoveredBlock94Step = 114 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) abtXmlNamespaceMappings.
            recoveredBlock94PC := 116.
        ].
        recoveredBlock94Step = 116 ifTrue: [
            recoveredBlock94Stack2 := recoveredLocal5.
            recoveredBlock94PC := 119.
        ].
        recoveredBlock94Step = 119 ifTrue: [
            recoveredBlock94Stack3 := [].
            recoveredBlock94PC := 121.
        ].
        recoveredBlock94Step = 121 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) at: (recoveredBlock94Stack2) ifAbsent: (recoveredBlock94Stack3).
            recoveredBlock94PC := 123.
        ].
        recoveredBlock94Step = 123 ifTrue: [
            recoveredBlock94Result := recoveredBlock94Stack1.
            recoveredBlock94Done := true.
        ].
    ].
    recoveredBlock94Result
].
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 149] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := Association.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := (recoveredStack0) key: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 175] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) definedBy.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := (recoveredStack0) types.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := (recoveredStack0) allNamespaceMappings.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := (recoveredStack0) associationAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 281] ifFalse: [recoveredPC := 182].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtXmlNamespaceMappings.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 204] ifFalse: [recoveredPC := 212].
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredPC := 281.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := (recoveredStack1) key.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 226] ifFalse: [recoveredPC := 281].
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := (recoveredStack0) prefixTable.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock232Value0 recoveredBlock232Value1 recoveredBlock232Value2 |
    recoveredBlock232Value0 := (self) prefixTable.
    recoveredBlock232Value1 := recoveredLocal5.
    recoveredBlock232Value2 := (recoveredBlock232Value0) at: (recoveredBlock232Value1) put: (1).
    recoveredBlock232Value2
].
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := (recoveredStack1) key.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            (recoveredStack0) key: (recoveredStack1).
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := prefixTable.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 288] ifFalse: [recoveredPC := 310].
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 310] ifFalse: [recoveredPC := 294].
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 310] ifFalse: [recoveredPC := 300].
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtXmlNamespaceMappings.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

