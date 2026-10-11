"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x20001274; bytecode file offset 0x112a0"
!AbtOrderedDictionary methodsFor: 'recovered'!
abtReverseDoWithIndex: recoveredXArg1
    | recoveredXValue0 recoveredXValue1 |
    recoveredXValue0 := recoveredLegacyIvar2.
    recoveredXValue1 := recoveredXArg1.
    (recoveredXValue0) abtReverseDoWithIndex: (recoveredXValue1).
    ^self
! !

"abtdah.ic method 0x200019bc; bytecode file offset 0x119ec"
!AbtOrderedDictionary methodsFor: 'recovered'!
sequenceableKeys: recoveredXArg1
    | recoveredXValue0 |
    recoveredXValue0 := recoveredXArg1.
    contents := recoveredXValue0.
    ^self
! !

"abtdah.ic method 0x200019e8; bytecode file offset 0x11a28"
!AbtOrderedDictionary methodsFor: 'recovered'!
sequenceableValues: recoveredXArg1
    | recoveredXValue0 |
    recoveredXValue0 := recoveredXArg1.
    recoveredLegacyIvar2 := recoveredXValue0.
    ^self
! !

"abtdah.ic method 0x20003898; bytecode file offset 0x138f0"
!AbtOrderedDictionary methodsFor: 'recovered'!
at: recoveredArg1 put: recoveredArg2 beforeValue: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := #(268442700 nil 32 3 nil nil).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) keyAtValue: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2) beforeKey: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdah.ic method 0x200038b4; bytecode file offset 0x138f0"
!AbtOrderedDictionary methodsFor: 'recovered'!
at: recoveredArg1 put: recoveredArg2 afterValue: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := #(268442714 nil 18 3 nil nil).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) keyAtValue: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2) afterKey: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdah.ic method 0x200043c0; bytecode file offset 0x14408"
!AbtOrderedDictionary methodsFor: 'recovered'!
at: recoveredArg1 put: recoveredArg2 beforeValue: recoveredArg3 ifAbsent: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg4.
    recoveredBlock7Value1 := (recoveredBlock7Value0) value.
    ^recoveredBlock7Value1
].
    recoveredValue2 := (self) keyAtValue: (recoveredValue0) ifAbsent: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) at: (recoveredValue3) put: (recoveredValue4) beforeKey: (recoveredValue5).
    ^recoveredValue6
! !

"abtdah.ic method 0x200043d4; bytecode file offset 0x14408"
!AbtOrderedDictionary methodsFor: 'recovered'!
at: recoveredArg1 put: recoveredArg2 afterValue: recoveredArg3 ifAbsent: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg4.
    recoveredBlock7Value1 := (recoveredBlock7Value0) value.
    ^recoveredBlock7Value1
].
    recoveredValue2 := (self) keyAtValue: (recoveredValue0) ifAbsent: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) at: (recoveredValue3) put: (recoveredValue4) afterKey: (recoveredValue5).
    ^recoveredValue6
! !

"abtdah.ic method 0x20004858; bytecode file offset 0x148a0"
!AbtOrderedDictionary methodsFor: 'recovered'!
moveValue: recoveredArg1 beforeValue: recoveredArg2 ifAbsent: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := recoveredArg3.
    recoveredBlock8Value1 := (recoveredBlock8Value0) value.
    ^recoveredBlock8Value1
].
    recoveredValue2 := (self) keyAtValue: (recoveredValue0) ifAbsent: (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := [
    | recoveredBlock25Value0 recoveredBlock25Value1 |
    recoveredBlock25Value0 := recoveredArg3.
    recoveredBlock25Value1 := (recoveredBlock25Value0) value.
    ^recoveredBlock25Value1
].
    recoveredValue5 := (self) keyAtValue: (recoveredValue3) ifAbsent: (recoveredValue4).
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := (self) moveKey: (recoveredValue2) beforeKey: (recoveredValue5) ifAbsent: (recoveredValue6).
    ^recoveredValue7
! !

"abtdah.ic method 0x2000486c; bytecode file offset 0x148a0"
!AbtOrderedDictionary methodsFor: 'recovered'!
moveValue: recoveredArg1 afterValue: recoveredArg2 ifAbsent: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := recoveredArg3.
    recoveredBlock8Value1 := (recoveredBlock8Value0) value.
    ^recoveredBlock8Value1
].
    recoveredValue2 := (self) keyAtValue: (recoveredValue0) ifAbsent: (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := [
    | recoveredBlock25Value0 recoveredBlock25Value1 |
    recoveredBlock25Value0 := recoveredArg3.
    recoveredBlock25Value1 := (recoveredBlock25Value0) value.
    ^recoveredBlock25Value1
].
    recoveredValue5 := (self) keyAtValue: (recoveredValue3) ifAbsent: (recoveredValue4).
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := (self) moveKey: (recoveredValue2) afterKey: (recoveredValue5) ifAbsent: (recoveredValue6).
    ^recoveredValue7
! !

"abtdah.ic method 0x20005324; bytecode file offset 0x1536c"
!AbtOrderedDictionary methodsFor: 'recovered'!
associationsSelect: recoveredXArg1
    | recoveredXLocal1 recoveredXValue0 recoveredXValue1 recoveredXValue2 recoveredXValue3 recoveredXValue4 |
    recoveredXValue0 := CldtConstants.
    recoveredXValue1 := (recoveredXValue0) new.
    recoveredXLocal1 := recoveredXValue1.
    recoveredXValue2 := contents.
    recoveredXValue3 := [:recoveredXBlock12Arg1 :recoveredXBlock12Arg2 | 
    | recoveredXBlock12Local1 recoveredXBlock12Stack0 recoveredXBlock12Stack1 recoveredXBlock12Stack2 recoveredXBlock12Stack3 recoveredXBlock12Stack4 recoveredXBlock12Stack5 recoveredXBlock12Stack6 recoveredXBlock12PC recoveredXBlock12Step recoveredXBlock12Done recoveredXBlock12Result |
    recoveredXBlock12Stack0 := self.
    recoveredXBlock12PC := 18.
    recoveredXBlock12Done := false.
    [recoveredXBlock12Done not] whileTrue: [
        recoveredXBlock12Step := recoveredXBlock12PC.
        recoveredXBlock12Step = 18 ifTrue: [
            recoveredXBlock12Stack1 := nil.
            recoveredXBlock12PC := 19.
        ].
        recoveredXBlock12Step = 19 ifTrue: [
            recoveredXBlock12Stack2 := recoveredXArg1.
            recoveredXBlock12PC := 22.
        ].
        recoveredXBlock12Step = 22 ifTrue: [
            recoveredXBlock12Stack3 := EmEvaluationRedirectionForLoadedCode.
            recoveredXBlock12PC := 24.
        ].
        recoveredXBlock12Step = 24 ifTrue: [
            recoveredXBlock12Stack3 := (recoveredXBlock12Stack3) new.
            recoveredXBlock12PC := 25.
        ].
        recoveredXBlock12Step = 25 ifTrue: [
            recoveredXBlock12Stack4 := recoveredXBlock12Stack3.
            recoveredXBlock12PC := 26.
        ].
        recoveredXBlock12Step = 26 ifTrue: [
            recoveredXBlock12Stack5 := recoveredXBlock12Arg1.
            recoveredXBlock12PC := 27.
        ].
        recoveredXBlock12Step = 27 ifTrue: [
            (recoveredXBlock12Stack4) key: (recoveredXBlock12Stack5).
            recoveredXBlock12PC := 29.
        ].
        recoveredXBlock12Step = 29 ifTrue: [
            recoveredXBlock12Stack4 := recoveredLegacyIvar2.
            recoveredXBlock12PC := 31.
        ].
        recoveredXBlock12Step = 31 ifTrue: [
            recoveredXBlock12Stack5 := recoveredXBlock12Arg2.
            recoveredXBlock12PC := 32.
        ].
        recoveredXBlock12Step = 32 ifTrue: [
            recoveredXBlock12Stack4 := (recoveredXBlock12Stack4) at: (recoveredXBlock12Stack5).
            recoveredXBlock12PC := 34.
        ].
        recoveredXBlock12Step = 34 ifTrue: [
            recoveredXBlock12Stack3 := (recoveredXBlock12Stack3) value: (recoveredXBlock12Stack4).
            recoveredXBlock12PC := 36.
        ].
        recoveredXBlock12Step = 36 ifTrue: [
            recoveredXBlock12Stack4 := recoveredXBlock12Stack3.
            recoveredXBlock12PC := 37.
        ].
        recoveredXBlock12Step = 37 ifTrue: [
            recoveredXBlock12Local1 := recoveredXBlock12Stack4.
            recoveredXBlock12PC := 38.
        ].
        recoveredXBlock12Step = 38 ifTrue: [
            recoveredXBlock12Stack2 := (recoveredXBlock12Stack2) value: (recoveredXBlock12Stack3).
            recoveredXBlock12PC := 40.
        ].
        recoveredXBlock12Step = 40 ifTrue: [
            (recoveredXBlock12Stack2) ifTrue: [recoveredXBlock12PC := 44] ifFalse: [recoveredXBlock12PC := 51].
        ].
        recoveredXBlock12Step = 44 ifTrue: [
            recoveredXBlock12PC := 45.
        ].
        recoveredXBlock12Step = 45 ifTrue: [
            recoveredXBlock12Stack1 := recoveredXLocal1.
            recoveredXBlock12PC := 48.
        ].
        recoveredXBlock12Step = 48 ifTrue: [
            recoveredXBlock12Stack2 := recoveredXBlock12Local1.
            recoveredXBlock12PC := 49.
        ].
        recoveredXBlock12Step = 49 ifTrue: [
            recoveredXBlock12Stack1 := (recoveredXBlock12Stack1) add: (recoveredXBlock12Stack2).
            recoveredXBlock12PC := 51.
        ].
        recoveredXBlock12Step = 51 ifTrue: [
            recoveredXBlock12Result := recoveredXBlock12Stack1.
            recoveredXBlock12Done := true.
        ].
    ].
    recoveredXBlock12Result
].
    (recoveredXValue2) doWithIndex: (recoveredXValue3).
    recoveredXValue4 := recoveredXLocal1.
    ^recoveredXValue4
! !

"abtdah.ic method 0x20005940; bytecode file offset 0x15984"
!AbtOrderedDictionary methodsFor: 'recovered'!
abtPrimitiveCloneFrom: recoveredXArg1 withRecursionSet: recoveredXArg2
    | recoveredXLocal1 recoveredXLocal2 recoveredXValue0 recoveredXValue1 recoveredXValue2 recoveredXValue3 recoveredXValue4 recoveredXValue5 recoveredXValue6 recoveredXValue7 recoveredXValue8 recoveredXValue9 |
    recoveredXValue0 := recoveredXArg1.
    recoveredXValue1 := (recoveredXValue0) size.
    recoveredXLocal2 := recoveredXValue1.
    recoveredXValue2 := CldtConstants.
    recoveredXValue3 := recoveredXLocal2.
    recoveredXValue4 := (recoveredXValue2) new: (recoveredXValue3).
    contents := recoveredXValue4.
    recoveredXValue5 := CldtConstants.
    recoveredXValue6 := recoveredXLocal2.
    recoveredXValue7 := (recoveredXValue5) new: (recoveredXValue6).
    recoveredLegacyIvar2 := recoveredXValue7.
    recoveredXLocal1 := 0.
    recoveredXValue8 := recoveredXArg1.
    recoveredXValue9 := [:recoveredXBlock35Arg1 :recoveredXBlock35Arg2 | 
    | recoveredXBlock35Value0 recoveredXBlock35Value1 recoveredXBlock35Value2 recoveredXBlock35Value3 recoveredXBlock35Value4 recoveredXBlock35Value5 recoveredXBlock35Value6 recoveredXBlock35Value7 recoveredXBlock35Value8 recoveredXBlock35Value9 recoveredXBlock35Value10 recoveredXBlock35Value11 |
    recoveredXBlock35Value0 := recoveredLegacyIvar3.
    recoveredXBlock35Value1 := recoveredXBlock35Arg1.
    recoveredXBlock35Value2 := recoveredXLocal1.
    recoveredXBlock35Value3 := (recoveredXBlock35Value2) + (1).
    recoveredXBlock35Value4 := recoveredXBlock35Value3.
    recoveredXLocal1 := recoveredXBlock35Value4.
    (recoveredXBlock35Value0) at: (recoveredXBlock35Value1) put: (recoveredXBlock35Value3).
    recoveredXBlock35Value5 := contents.
    recoveredXBlock35Value6 := recoveredXBlock35Arg1.
    (recoveredXBlock35Value5) add: (recoveredXBlock35Value6).
    recoveredXBlock35Value7 := recoveredLegacyIvar2.
    recoveredXBlock35Value8 := recoveredXBlock35Arg2.
    recoveredXBlock35Value9 := recoveredXArg2.
    recoveredXBlock35Value10 := (recoveredXBlock35Value8) abtCloneWithRecursionSet: (recoveredXBlock35Value9).
    recoveredXBlock35Value11 := (recoveredXBlock35Value7) add: (recoveredXBlock35Value10).
    recoveredXBlock35Value11
].
    (recoveredXValue8) keysAndValuesDo: (recoveredXValue9).
    ^self
! !

"abtdah.ic method 0x20005b78; bytecode file offset 0x15bd8"
!AbtOrderedDictionary methodsFor: 'recovered'!
mutateSequenceableKeysAndValues: recoveredXArg1
    | recoveredXLocal1 recoveredXStack0 recoveredXStack1 recoveredXStack2 recoveredXStack3 recoveredXStack4 recoveredXStack5 recoveredXStack6 recoveredXPC recoveredXStep |
    recoveredXStack0 := self.
    recoveredXPC := 4.
    [true] whileTrue: [
        recoveredXStep := recoveredXPC.
        recoveredXStep = 4 ifTrue: [
            recoveredXStack1 := recoveredXArg1.
            recoveredXPC := 5.
        ].
        recoveredXStep = 5 ifTrue: [
            recoveredXStack1 := (recoveredXStack1) class.
            recoveredXPC := 6.
        ].
        recoveredXStep = 6 ifTrue: [
            recoveredXStack2 := ExceptionalEvent.
            recoveredXPC := 8.
        ].
        recoveredXStep = 8 ifTrue: [
            (recoveredXStack1 ~~ recoveredXStack2) ifTrue: [recoveredXPC := 32] ifFalse: [recoveredXPC := 12].
        ].
        recoveredXStep = 12 ifTrue: [
            recoveredXStack1 := CldtConstants.
            recoveredXPC := 14.
        ].
        recoveredXStep = 14 ifTrue: [
            recoveredXStack2 := ExceptionalEvent.
            recoveredXPC := 16.
        ].
        recoveredXStep = 16 ifTrue: [
            recoveredXStack3 := recoveredXArg1.
            recoveredXPC := 17.
        ].
        recoveredXStep = 17 ifTrue: [
            recoveredXStack2 := (recoveredXStack2) with: (recoveredXStack3).
            recoveredXPC := 18.
        ].
        recoveredXStep = 18 ifTrue: [
            recoveredXStack3 := 'ES'.
            recoveredXPC := 20.
        ].
        recoveredXStep = 20 ifTrue: [
            recoveredXStack4 := nil.
            recoveredXPC := 21.
        ].
        recoveredXStep = 21 ifTrue: [
            recoveredXStack5 := nil.
            recoveredXPC := 22.
        ].
        recoveredXStep = 22 ifTrue: [
            recoveredXStack1 := (recoveredXStack1) mutateObjects: (recoveredXStack2) fromPlatform: (recoveredXStack3) named: (recoveredXStack4) withDefinition: (recoveredXStack5).
            recoveredXPC := 25.
        ].
        recoveredXStep = 25 ifTrue: [
            recoveredXStack2 := 1.
            recoveredXPC := 27.
        ].
        recoveredXStep = 27 ifTrue: [
            recoveredXStack1 := (recoveredXStack1) at: (recoveredXStack2).
            recoveredXPC := 29.
        ].
        recoveredXStep = 29 ifTrue: [
            recoveredXPC := 49.
        ].
        recoveredXStep = 32 ifTrue: [
            recoveredXStack1 := recoveredXArg1.
            recoveredXPC := 33.
        ].
        recoveredXStep = 33 ifTrue: [
            recoveredXStack1 := (recoveredXStack1) class.
            recoveredXPC := 34.
        ].
        recoveredXStep = 34 ifTrue: [
            recoveredXStack2 := CldtConstants.
            recoveredXPC := 36.
        ].
        recoveredXStep = 36 ifTrue: [
            (recoveredXStack1 ~~ recoveredXStack2) ifTrue: [recoveredXPC := 44] ifFalse: [recoveredXPC := 40].
        ].
        recoveredXStep = 40 ifTrue: [
            recoveredXStack1 := recoveredXArg1.
            recoveredXPC := 41.
        ].
        recoveredXStep = 41 ifTrue: [
            recoveredXPC := 49.
        ].
        recoveredXStep = 44 ifTrue: [
            recoveredXStack1 := self.
            recoveredXPC := 45.
        ].
        recoveredXStep = 45 ifTrue: [
            recoveredXStack2 := 'oops'.
            recoveredXPC := 47.
        ].
        recoveredXStep = 47 ifTrue: [
            recoveredXStack1 := (recoveredXStack1) error: (recoveredXStack2).
            recoveredXPC := 49.
        ].
        recoveredXStep = 49 ifTrue: [
            recoveredXLocal1 := recoveredXStack1.
            recoveredXPC := 50.
        ].
        recoveredXStep = 50 ifTrue: [
            recoveredXStack1 := recoveredXLocal1.
            recoveredXPC := 51.
        ].
        recoveredXStep = 51 ifTrue: [
            recoveredXStack2 := #(268447164 nil 59 8388611 nil nil).
            recoveredXPC := 53.
        ].
        recoveredXStep = 53 ifTrue: [
            recoveredXPC := 60.
        ].
        recoveredXStep = 60 ifTrue: [
            recoveredXStack1 := (recoveredXStack1) collect: (recoveredXStack2).
            recoveredXPC := 62.
        ].
        recoveredXStep = 62 ifTrue: [
            contents := recoveredXStack1.
            recoveredXPC := 64.
        ].
        recoveredXStep = 64 ifTrue: [
            recoveredXStack1 := recoveredXLocal1.
            recoveredXPC := 65.
        ].
        recoveredXStep = 65 ifTrue: [
            recoveredXStack2 := #(268447164 nil 66 8388611 nil nil).
            recoveredXPC := 67.
        ].
        recoveredXStep = 67 ifTrue: [
            recoveredXPC := 74.
        ].
        recoveredXStep = 74 ifTrue: [
            recoveredXStack1 := (recoveredXStack1) collect: (recoveredXStack2).
            recoveredXPC := 76.
        ].
        recoveredXStep = 76 ifTrue: [
            recoveredLegacyIvar2 := recoveredXStack1.
            recoveredXPC := 78.
        ].
        recoveredXStep = 78 ifTrue: [
            ^recoveredXStack0
        ].
    ]
! !

