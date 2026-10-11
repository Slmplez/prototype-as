"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006516c; bytecode file offset 0x961acc"
!AbtIndexedDictionary methodsFor: 'recovered'!
deferredUpdateCopy
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) species.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) deferredUpdateCopyFrom: (self).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bd9f4; bytecode file offset 0x9bb178"
!AbtIndexedDictionary methodsFor: 'recovered'!
sequenceableKeys: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sequenceableKeys := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf070; bytecode file offset 0x9bc0b4"
!AbtIndexedDictionary methodsFor: 'recovered'!
sequenceableValues: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sequenceableValues := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20371158; bytecode file offset 0xc6da18"
!AbtIndexedDictionary methodsFor: 'recovered'!
mutateSequenceableKeysAndValues: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            (recoveredBlock7Stack1 == nil) ifTrue: [recoveredBlock7PC := 26] ifFalse: [recoveredBlock7PC := 18].
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg1.
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            (recoveredBlock7Stack1 ~~ recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 30] ifFalse: [recoveredBlock7PC := 26].
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) key.
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    recoveredValue2 := (recoveredValue0) collect: (recoveredValue1).
    sequenceableKeys := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Stack0 recoveredBlock39Stack1 recoveredBlock39Stack2 recoveredBlock39Stack3 recoveredBlock39PC recoveredBlock39Step recoveredBlock39Done recoveredBlock39Result |
    recoveredBlock39Stack0 := self.
    recoveredBlock39PC := 46.
    recoveredBlock39Done := false.
    [recoveredBlock39Done not] whileTrue: [
        recoveredBlock39Step := recoveredBlock39PC.
        recoveredBlock39Step = 46 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Arg1.
            recoveredBlock39PC := 47.
        ].
        recoveredBlock39Step = 47 ifTrue: [
            (recoveredBlock39Stack1 == nil) ifTrue: [recoveredBlock39PC := 58] ifFalse: [recoveredBlock39PC := 50].
        ].
        recoveredBlock39Step = 50 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Arg1.
            recoveredBlock39PC := 51.
        ].
        recoveredBlock39Step = 51 ifTrue: [
            recoveredBlock39Stack2 := recoveredArg1.
            recoveredBlock39PC := 54.
        ].
        recoveredBlock39Step = 54 ifTrue: [
            (recoveredBlock39Stack1 ~~ recoveredBlock39Stack2) ifTrue: [recoveredBlock39PC := 62] ifFalse: [recoveredBlock39PC := 58].
        ].
        recoveredBlock39Step = 58 ifTrue: [
            recoveredBlock39Stack1 := nil.
            recoveredBlock39PC := 59.
        ].
        recoveredBlock39Step = 59 ifTrue: [
            recoveredBlock39PC := 64.
        ].
        recoveredBlock39Step = 62 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Arg1.
            recoveredBlock39PC := 63.
        ].
        recoveredBlock39Step = 63 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) value.
            recoveredBlock39PC := 64.
        ].
        recoveredBlock39Step = 64 ifTrue: [
            recoveredBlock39Result := recoveredBlock39Stack1.
            recoveredBlock39Done := true.
        ].
    ].
    recoveredBlock39Result
].
    recoveredValue5 := (recoveredValue3) collect: (recoveredValue4).
    sequenceableValues := recoveredValue5.
    ^self
! !

"ASDBase.ic method 0x203feb24; bytecode file offset 0xcfb3f8"
!AbtIndexedDictionary methodsFor: 'recovered'!
deferredUpdateCopyFrom: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredLocal1 := 0.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock12Arg1 :recoveredBlock12Arg2 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := recoveredLocal1.
    recoveredBlock12Value1 := recoveredBlock12Arg2.
    recoveredBlock12Value2 := (recoveredBlock12Value0) max: (recoveredBlock12Value1).
    recoveredBlock12Value3 := recoveredBlock12Value2.
    recoveredLocal1 := recoveredBlock12Value3.
    recoveredBlock12Value2
].
    (recoveredValue0) indexKeysAndValuesDo: (recoveredValue1).
    recoveredValue2 := Array.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) + (4).
    recoveredValue5 := (recoveredValue2) new: (recoveredValue4).
    sequenceableKeys := recoveredValue5.
    recoveredValue6 := Array.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) + (4).
    recoveredValue9 := (recoveredValue6) new: (recoveredValue8).
    sequenceableValues := recoveredValue9.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := [:recoveredBlock55Arg1 :recoveredBlock55Arg2 | 
    | recoveredBlock55Value0 recoveredBlock55Value1 recoveredBlock55Value2 recoveredBlock55Value3 recoveredBlock55Value4 recoveredBlock55Value5 recoveredBlock55Value6 recoveredBlock55Value7 recoveredBlock55Value8 recoveredBlock55Value9 recoveredBlock55Value10 recoveredBlock55Value11 recoveredBlock55Value12 |
    recoveredBlock55Value0 := lookupTable.
    recoveredBlock55Value1 := recoveredBlock55Arg1.
    recoveredBlock55Value2 := recoveredBlock55Arg2.
    (recoveredBlock55Value0) at: (recoveredBlock55Value1) put: (recoveredBlock55Value2).
    recoveredBlock55Value3 := sequenceableKeys.
    recoveredBlock55Value4 := recoveredBlock55Arg2.
    recoveredBlock55Value5 := recoveredBlock55Arg1.
    (recoveredBlock55Value3) at: (recoveredBlock55Value4) put: (recoveredBlock55Value5).
    recoveredBlock55Value6 := sequenceableValues.
    recoveredBlock55Value7 := recoveredBlock55Arg2.
    recoveredBlock55Value8 := recoveredArg1.
    recoveredBlock55Value9 := recoveredBlock55Arg2.
    recoveredBlock55Value10 := (recoveredBlock55Value8) atIndex: (recoveredBlock55Value9).
    recoveredBlock55Value11 := (recoveredBlock55Value10) recursiveDeferredUpdateOperation.
    recoveredBlock55Value12 := (recoveredBlock55Value6) at: (recoveredBlock55Value7) put: (recoveredBlock55Value11).
    recoveredBlock55Value12
].
    (recoveredValue10) indexKeysAndValuesDo: (recoveredValue11).
    (self) recalculateFreeIndexes.
    ^self
! !

