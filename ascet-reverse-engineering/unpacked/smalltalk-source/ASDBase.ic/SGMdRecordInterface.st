"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20027f64; bytecode file offset 0x934580"
!SGMdRecordInterface methodsFor: 'recovered'!
isCgExternalStructOrTypedef
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) optimizations.
    recoveredValue1 := (recoveredValue0) isCgExternalStructOrTypedef.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200288a4; bytecode file offset 0x934580"
!SGMdRecordInterface methodsFor: 'recovered'!
isCgOrderedElements
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) optimizations.
    recoveredValue1 := (recoveredValue0) isCgOrderedElements.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d958; bytecode file offset 0x93bf94"
!SGMdRecordInterface methodsFor: 'recovered'!
arBaseCategory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgAutosarSettings.
    recoveredValue1 := (recoveredValue0) categoryRecordType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055cb0; bytecode file offset 0x952a9c"
!SGMdRecordInterface methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlRecordInterface: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20077bf4; bytecode file offset 0x9757c8"
!SGMdRecordInterface methodsFor: 'recovered'!
isMdlRecordType
    ^true
! !

"ASDBase.ic method 0x200af4a8; bytecode file offset 0x9abd78"
!SGMdRecordInterface methodsFor: 'recovered'!
deepLookup: recoveredArg1 expr: recoveredArg2 imports: recoveredArg3 ifFail: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg4.
    recoveredValue3 := (self) deepLookup: (recoveredValue0) expr: (recoveredValue1) ifFail: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200bd154; bytecode file offset 0x9b9a3c"
!SGMdRecordInterface methodsFor: 'recovered'!
containsDataSet: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) instVarInitValues.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) notNil.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2010e410; bytecode file offset 0xa0acd8"
!SGMdRecordInterface methodsFor: 'recovered'!
genSixKind: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expander.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) attribute: ('kind') with: ('asd:class').
    (recoveredValue1) writeHeaderEnd.
    ^self
! !

"ASDBase.ic method 0x203642a4; bytecode file offset 0xc60b88"
!SGMdRecordInterface methodsFor: 'recovered'!
sortedInstVars
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super sortedInstVars.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) componentAttributes.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgOrderedElements.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:block280f0b04Arg1 :block280f0b04Arg2 | 
    | block280f0b04Value0 block280f0b04Value1 block280f0b04Value2 block280f0b04Value3 block280f0b04Value4 |
    block280f0b04Value0 := block280f0b04Arg1.
    block280f0b04Value1 := (block280f0b04Value0) position.
    block280f0b04Value2 := block280f0b04Arg2.
    block280f0b04Value3 := (block280f0b04Value2) position.
    block280f0b04Value4 := (block280f0b04Value1) < (block280f0b04Value3).
    block280f0b04Value4
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) isControllerVariant.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := [:block280f0b28Arg1 :block280f0b28Arg2 | 
    | block280f0b28Value0 block280f0b28Value1 block280f0b28Value2 block280f0b28Value3 block280f0b28Value4 block280f0b28Value5 block280f0b28Value6 |
    block280f0b28Value0 := block280f0b28Arg1.
    block280f0b28Value1 := (block280f0b28Value0) mdlClass.
    block280f0b28Value2 := (block280f0b28Value1) byteSize.
    block280f0b28Value3 := block280f0b28Arg2.
    block280f0b28Value4 := (block280f0b28Value3) mdlClass.
    block280f0b28Value5 := (block280f0b28Value4) byteSize.
    block280f0b28Value6 := (block280f0b28Value2) >= (block280f0b28Value5).
    block280f0b28Value6
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

