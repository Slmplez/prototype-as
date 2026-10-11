"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200048b0; bytecode file offset 0x90206c"
!ASAP2BytesCompuMethod class methodsFor: 'recovered'!
subType: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000bc84; bytecode file offset 0x908be4"
!ASAP2BytesCompuMethod class methodsFor: 'recovered'!
formulaType
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20013344; bytecode file offset 0x912098"
!ASAP2BytesCompuMethod class methodsFor: 'recovered'!
TypeClasses
    | recoveredValue0 |
    recoveredValue0 := TypeClasses.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016c58; bytecode file offset 0x92209c"
!ASAP2BytesCompuMethod class methodsFor: 'recovered'!
type
    ^''
! !

"ASDBase.ic method 0x20019880; bytecode file offset 0x92209c"
!ASAP2BytesCompuMethod class methodsFor: 'recovered'!
members
    ^#('name' 'bytes' 'comments' 'unit' 'format' 'coeffs' 'compuTabRef' 'formula' 'refUnit')
! !

"ASDBase.ic method 0x20019c64; bytecode file offset 0x92209c"
!ASAP2BytesCompuMethod class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'bytes:' 'comments:' 'unit:' 'format:' 'coeffs:' 'compuTabRef:' 'formula:')
! !

"ASDBase.ic method 0x20021a10; bytecode file offset 0x92209c"
!ASAP2BytesCompuMethod class methodsFor: 'recovered'!
keyWord
    ^'COMPU_METHOD'
! !

"ASDBase.ic method 0x20053e04; bytecode file offset 0x951190"
!ASAP2BytesCompuMethod class methodsFor: 'recovered'!
TypeClasses: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    TypeClasses := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200727c8; bytecode file offset 0x96f1c4"
!ASAP2BytesCompuMethod class methodsFor: 'recovered'!
bytesSize
    ^2
! !

"ASDBase.ic method 0x20072e78; bytecode file offset 0x96f7ac"
!ASAP2BytesCompuMethod class methodsFor: 'recovered'!
fixedSize
    ^5
! !

"ASDBase.ic method 0x20076424; bytecode file offset 0x9757c8"
!ASAP2BytesCompuMethod class methodsFor: 'recovered'!
isASAP2Standard
    ^true
! !

"ASDBase.ic method 0x20159b80; bytecode file offset 0xa5644c"
!ASAP2BytesCompuMethod class methodsFor: 'recovered'!
referenceAccessors
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := super referenceAccessors.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := ASAP2CompuTab.
    recoveredValue3 := (recoveredValue2) withAllSubclasses.
    (recoveredValue1) at: ('compuTabRef') put: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x202364a0; bytecode file offset 0xb32d74"
!ASAP2BytesCompuMethod class methodsFor: 'recovered'!
editableFormulaClasses
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := ASAP2BytesIdentityCompuMethod.
    (recoveredValue3) add: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := ASAP2BytesLinearCompuMethod.
    (recoveredValue5) add: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := ASAP2BytesRatFuncCompuMethod.
    (recoveredValue7) add: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := ASAP2BytesTabIntPCompuMethod.
    (recoveredValue9) add: (recoveredValue10).
    recoveredValue11 := ASAP2BytesTabNoIntPCompuMethod.
    (recoveredValue2) add: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

"ASDBase.ic method 0x2026460c; bytecode file offset 0xb60eec"
!ASAP2BytesCompuMethod class methodsFor: 'recovered'!
conversionTypesExpert
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSubclasses.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280dfeb4Arg1 | 
    | block280dfeb4Value0 block280dfeb4Value1 |
    block280dfeb4Value0 := block280dfeb4Arg1.
    block280dfeb4Value1 := (block280dfeb4Value0) type.
    block280dfeb4Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := #('' '' '').
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) removeAll: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:block280dfed8Arg1 :block280dfed8Arg2 | 
    | block280dfed8Value0 block280dfed8Value1 block280dfed8Value2 |
    block280dfed8Value0 := block280dfed8Arg1.
    block280dfed8Value1 := block280dfed8Arg2.
    block280dfed8Value2 := (block280dfed8Value0) < (block280dfed8Value1).
    block280dfed8Value2
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) sortBlock: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e5280; bytecode file offset 0xbe1b6c"
!ASAP2BytesCompuMethod class methodsFor: 'recovered'!
conversionTypes
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSubclasses.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280e7780Arg1 | 
    | block280e7780Value0 block280e7780Value1 |
    block280e7780Value0 := block280e7780Arg1.
    block280e7780Value1 := (block280e7780Value0) isASAP2Standard.
    block280e7780Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:block280e77a4Arg1 | 
    | block280e77a4Value0 block280e77a4Value1 |
    block280e77a4Value0 := block280e77a4Arg1.
    block280e77a4Value1 := (block280e77a4Value0) type.
    block280e77a4Value1
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := #('' '' '').
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) removeAll: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := [:block280e77c8Arg1 :block280e77c8Arg2 | 
    | block280e77c8Value0 block280e77c8Value1 block280e77c8Value2 |
    block280e77c8Value0 := block280e77c8Arg1.
    block280e77c8Value1 := block280e77c8Arg2.
    block280e77c8Value2 := (block280e77c8Value0) < (block280e77c8Value1).
    block280e77c8Value2
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) sortBlock: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2037dd5c; bytecode file offset 0xc7a660"
!ASAP2BytesCompuMethod class methodsFor: 'recovered'!
initializeClass
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new: (5).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := ASAP2BytesRatFuncCompuMethod.
    (recoveredValue3) at: ('RAT_FUNC') put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := ASAP2BytesTabIntPCompuMethod.
    (recoveredValue5) at: ('TAB_INTP') put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := ASAP2BytesTabNoIntPCompuMethod.
    (recoveredValue7) at: ('TAB_NOINTP') put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := ASAP2BytesTabVerbCompuMethod.
    (recoveredValue9) at: ('TAB_VERB') put: (recoveredValue10).
    recoveredValue11 := ASAP2BytesFormCompuMethod.
    (recoveredValue2) at: ('FORM') put: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := recoveredValue12.
    recoveredValue14 := ASAP2BytesExponentialCompuMethod.
    (recoveredValue13) at: ('EXPONENTIAL') put: (recoveredValue14).
    recoveredValue15 := recoveredValue12.
    recoveredValue16 := ASAP2BytesLogarithmCompuMethod.
    (recoveredValue15) at: ('LOGARITHM') put: (recoveredValue16).
    recoveredValue17 := ASAP2BytesStretchCompuMethod.
    (recoveredValue12) at: ('STRETCH') put: (recoveredValue17).
    recoveredValue18 := recoveredLocal1.
    (self) TypeClasses: (recoveredValue18).
    ^self
! !

"ASDBase.ic method 0x203ca490; bytecode file offset 0xcc6d8c"
!ASAP2BytesCompuMethod class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('FORMULA') put: ('getFormula:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('COEFFS') put: ('getCoeffs:').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) at: ('COMPU_TAB_REF') put: ('getCompuTabRef:').
    (recoveredValue0) at: ('REF_UNIT') put: ('getRefUnit:').
    recoveredValue4 := options.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := Association.
    recoveredValue7 := (recoveredValue6) key: ('FORMULA') value: ('putIn:formula:').
    (recoveredValue5) add: (recoveredValue7).
    recoveredValue8 := recoveredValue4.
    recoveredValue9 := Association.
    recoveredValue10 := (recoveredValue9) key: ('COEFFS') value: ('putIn:coeffs:').
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue4.
    recoveredValue12 := Association.
    recoveredValue13 := (recoveredValue12) key: ('COMPU_TAB_REF') value: ('putIn:compuTabRef:').
    (recoveredValue11) add: (recoveredValue13).
    recoveredValue14 := Association.
    recoveredValue15 := (recoveredValue14) key: ('REF_UNIT') value: ('putIn:refUnit:').
    (recoveredValue4) add: (recoveredValue15).
    ^self
! !

"ASDBase.ic method 0x204e5648; bytecode file offset 0xde1f5c"
!ASAP2BytesCompuMethod class methodsFor: 'recovered'!
getCreateDictionary
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ASAP2BytesCompuMethod.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubclasses.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Local1 recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) type.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            (recoveredBlock13Stack2 == nil) ifTrue: [recoveredBlock13PC := 102] ifFalse: [recoveredBlock13PC := 28].
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 29.
        ].
        recoveredBlock13Step = 29 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) type.
            recoveredBlock13PC := 31.
        ].
        recoveredBlock13Step = 31 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) notEmpty.
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 33 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 36] ifFalse: [recoveredBlock13PC := 102].
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13PC := 37.
        ].
        recoveredBlock13Step = 37 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 38.
        ].
        recoveredBlock13Step = 38 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) typeDescription.
            recoveredBlock13PC := 40.
        ].
        recoveredBlock13Step = 40 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) isEmpty.
            recoveredBlock13PC := 42.
        ].
        recoveredBlock13Step = 42 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 46] ifFalse: [recoveredBlock13PC := 52].
        ].
        recoveredBlock13Step = 46 ifTrue: [
            recoveredBlock13Stack1 := ''.
            recoveredBlock13PC := 48.
        ].
        recoveredBlock13Step = 48 ifTrue: [
            recoveredBlock13PC := 63.
        ].
        recoveredBlock13Step = 52 ifTrue: [
            recoveredBlock13Stack1 := ' ['.
            recoveredBlock13PC := 54.
        ].
        recoveredBlock13Step = 54 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 55.
        ].
        recoveredBlock13Step = 55 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) typeDescription.
            recoveredBlock13PC := 57.
        ].
        recoveredBlock13Step = 57 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) , (recoveredBlock13Stack2).
            recoveredBlock13PC := 59.
        ].
        recoveredBlock13Step = 59 ifTrue: [
            recoveredBlock13Stack2 := ']'.
            recoveredBlock13PC := 61.
        ].
        recoveredBlock13Step = 61 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) , (recoveredBlock13Stack2).
            recoveredBlock13PC := 63.
        ].
        recoveredBlock13Step = 63 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 64.
        ].
        recoveredBlock13Step = 64 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 65.
        ].
        recoveredBlock13Step = 65 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) subType.
            recoveredBlock13PC := 67.
        ].
        recoveredBlock13Step = 67 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) isEmpty.
            recoveredBlock13PC := 69.
        ].
        recoveredBlock13Step = 69 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 72] ifFalse: [recoveredBlock13PC := 88].
        ].
        recoveredBlock13Step = 72 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 75.
        ].
        recoveredBlock13Step = 75 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 76.
        ].
        recoveredBlock13Step = 76 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) type.
            recoveredBlock13PC := 78.
        ].
        recoveredBlock13Step = 78 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Local1.
            recoveredBlock13PC := 79.
        ].
        recoveredBlock13Step = 79 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) , (recoveredBlock13Stack3).
            recoveredBlock13PC := 81.
        ].
        recoveredBlock13Step = 81 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 82.
        ].
        recoveredBlock13Step = 82 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2) put: (recoveredBlock13Stack3).
            recoveredBlock13PC := 84.
        ].
        recoveredBlock13Step = 84 ifTrue: [
            recoveredBlock13PC := 100.
        ].
        recoveredBlock13Step = 88 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 91.
        ].
        recoveredBlock13Step = 91 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 92.
        ].
        recoveredBlock13Step = 92 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) subType.
            recoveredBlock13PC := 94.
        ].
        recoveredBlock13Step = 94 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Local1.
            recoveredBlock13PC := 95.
        ].
        recoveredBlock13Step = 95 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) , (recoveredBlock13Stack3).
            recoveredBlock13PC := 97.
        ].
        recoveredBlock13Step = 97 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 98.
        ].
        recoveredBlock13Step = 98 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2) put: (recoveredBlock13Stack3).
            recoveredBlock13PC := 100.
        ].
        recoveredBlock13Step = 100 ifTrue: [
            recoveredBlock13Stack2 := nil.
            recoveredBlock13PC := 101.
        ].
        recoveredBlock13Step = 101 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack2.
            recoveredBlock13PC := 102.
        ].
        recoveredBlock13Step = 102 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEnhancedFeatures.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := ASAP2BytesLogarithmCompuMethod.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) keyAtValue: (recoveredStack3).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1) removeKey: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := ASAP2BytesExponentialCompuMethod.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := (recoveredStack2) keyAtValue: (recoveredStack3).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack1) removeKey: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := ASAP2BytesStretchCompuMethod.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := (recoveredStack2) keyAtValue: (recoveredStack3).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack1) removeKey: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

