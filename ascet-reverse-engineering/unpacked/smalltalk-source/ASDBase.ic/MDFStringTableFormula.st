"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200015b0; bytecode file offset 0x8ffcfc"
!MDFStringTableFormula methodsFor: 'recovered'!
asMDFStringTableFormula
    ^self
! !

"ASDBase.ic method 0x2006b7e0; bytecode file offset 0x96873c"
!MDFStringTableFormula methodsFor: 'recovered'!
defaultValue
    | recoveredValue0 |
    recoveredValue0 := defaultValue.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bfdc; bytecode file offset 0x9692b0"
!MDFStringTableFormula methodsFor: 'recovered'!
stringParameter
    | recoveredValue0 |
    recoveredValue0 := stringParameter.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008b36c; bytecode file offset 0x987c24"
!MDFStringTableFormula methodsFor: 'recovered'!
defaultValuePtr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := bytes.
    recoveredValue1 := (recoveredValue0) uint32At: (58).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20092ec8; bytecode file offset 0x98f7b0"
!MDFStringTableFormula methodsFor: 'recovered'!
addStringParameter: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := stringParameter.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b8e9c; bytecode file offset 0x9b5754"
!MDFStringTableFormula methodsFor: 'recovered'!
defaultValuePtr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := bytes.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) uint32At: (58) put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c3384; bytecode file offset 0x9bfde0"
!MDFStringTableFormula methodsFor: 'recovered'!
stringParameter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    stringParameter := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20121ca0; bytecode file offset 0xa1e558"
!MDFStringTableFormula methodsFor: 'recovered'!
stringParameter: recoveredArg1 ptr: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := bytes.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) * (20).
    recoveredValue3 := (58) + (recoveredValue2).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue0) uint32At: (recoveredValue3) put: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20194754; bytecode file offset 0xa91014"
!MDFStringTableFormula methodsFor: 'recovered'!
defaultValue: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := MDFText.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            defaultValue := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            defaultValue := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201c76e4; bytecode file offset 0xac3fa8"
!MDFStringTableFormula methodsFor: 'recovered'!
getDefaultValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := defaultValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280d482cArg1 | 
    | block280d482cStack0 block280d482cStack1 block280d482cStack2 block280d482cPC block280d482cStep block280d482cDone block280d482cResult |
    block280d482cStack0 := self.
    block280d482cPC := 4.
    block280d482cDone := false.
    [block280d482cDone not] whileTrue: [
        block280d482cStep := block280d482cPC.
        block280d482cStep = 4 ifTrue: [
            block280d482cStack1 := block280d482cArg1.
            block280d482cPC := 5.
        ].
        block280d482cStep = 5 ifTrue: [
            block280d482cStack1 := (block280d482cStack1) isString.
            block280d482cPC := 6.
        ].
        block280d482cStep = 6 ifTrue: [
            (block280d482cStack1) ifTrue: [block280d482cPC := 10] ifFalse: [block280d482cPC := 14].
        ].
        block280d482cStep = 10 ifTrue: [
            block280d482cStack1 := block280d482cArg1.
            block280d482cPC := 11.
        ].
        block280d482cStep = 11 ifTrue: [
            block280d482cPC := 16.
        ].
        block280d482cStep = 14 ifTrue: [
            block280d482cStack1 := block280d482cArg1.
            block280d482cPC := 15.
        ].
        block280d482cStep = 15 ifTrue: [
            block280d482cStack1 := (block280d482cStack1) text.
            block280d482cPC := 16.
        ].
        block280d482cStep = 16 ifTrue: [
            block280d482cResult := block280d482cStack1.
            block280d482cDone := true.
        ].
    ].
    block280d482cResult
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201df210; bytecode file offset 0xadbad0"
!MDFStringTableFormula methodsFor: 'recovered'!
getStringParameterFrom: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDefaultValue: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) getStringParameter: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20212de0; bytecode file offset 0xb0f69c"
!MDFStringTableFormula methodsFor: 'recovered'!
stringParameterPtr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 58.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := 20.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := bytes.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := bytes.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) uint32At: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20216a94; bytecode file offset 0xb13364"
!MDFStringTableFormula methodsFor: 'recovered'!
parameter: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) at: (2).
    (self) defaultValue: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := (recoveredValue2) copyFrom: (3) to: (recoveredValue4).
    (self) par: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) size.
    recoveredValue8 := (recoveredValue7) + (-2).
    recoveredValue9 := (recoveredValue8) / (2).
    (self) formulaNPar: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x2024bce0; bytecode file offset 0xb485b0"
!MDFStringTableFormula methodsFor: 'recovered'!
initializeDefault: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) id.
    id := recoveredValue1.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) fixedSize.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) * (20).
    recoveredValue6 := (recoveredValue3) + (recoveredValue5).
    recoveredValue7 := (recoveredValue6) + (20).
    length := recoveredValue7.
    recoveredValue8 := String.
    recoveredValue9 := length.
    recoveredValue10 := (recoveredValue8) new: (recoveredValue9).
    bytes := recoveredValue10.
    recoveredValue11 := OrderedCollection.
    recoveredValue12 := (recoveredValue11) new.
    stringParameter := recoveredValue12.
    ^self
! !

"ASDBase.ic method 0x202536d8; bytecode file offset 0xb4ffac"
!MDFStringTableFormula methodsFor: 'recovered'!
initializeDefault
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    (self) halt.
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) id.
    id := recoveredValue1.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) fixedSize.
    recoveredValue4 := (recoveredValue3) + (16).
    length := recoveredValue4.
    recoveredValue5 := String.
    recoveredValue6 := (self) class.
    recoveredValue7 := (recoveredValue6) fixedSize.
    recoveredValue8 := (recoveredValue7) + (16).
    recoveredValue9 := (recoveredValue5) new: (recoveredValue8).
    bytes := recoveredValue9.
    recoveredValue10 := (Array new: 2) at: 1 put: (#[0 0 0 0 0 0 0 0]); at: 2 put: (#[0 0 0 0 0 0 240 63]); yourself.
    (self) par: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x202df9ec; bytecode file offset 0xbdc2c4"
!MDFStringTableFormula methodsFor: 'recovered'!
getDefaultValue: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultValuePtr.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) position: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := MDFText.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) defaultValue: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultValue.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) getFrom: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202fddd0; bytecode file offset 0xbfa6a4"
!MDFStringTableFormula methodsFor: 'recovered'!
putIn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultValue.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultValue.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultValue.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) offset.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) defaultValuePtr: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) stringParameter.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:recoveredBlock24Arg1 :recoveredBlock24Arg2 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 recoveredBlock24Value5 |
    recoveredBlock24Value0 := recoveredBlock24Arg1.
    recoveredBlock24Value1 := recoveredArg1.
    (recoveredBlock24Value0) putIn: (recoveredBlock24Value1).
    recoveredBlock24Value2 := recoveredBlock24Arg2.
    recoveredBlock24Value3 := recoveredBlock24Arg1.
    recoveredBlock24Value4 := (recoveredBlock24Value3) offset.
    recoveredBlock24Value5 := (self) stringParameter: (recoveredBlock24Value2) ptr: (recoveredBlock24Value4).
    recoveredBlock24Value5
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            super putIn: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d44e8; bytecode file offset 0xcd0dcc"
!MDFStringTableFormula methodsFor: 'recovered'!
getStringParameter: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) formulaNPar.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) stringParameterPtr: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := DBFileError.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := MDFInvalidTabVerbRange.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) position: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := MDFText.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) create.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) addStringParameter: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) getFrom: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 12] ifFalse: [recoveredLocal1 := nil. recoveredPC := 82]] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203de934; bytecode file offset 0xcdb214"
!MDFStringTableFormula methodsFor: 'recovered'!
parameter
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := (self) par.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) size.
    recoveredValue4 := (recoveredValue1) new: (recoveredValue3).
    recoveredLocal3 := recoveredValue4.
    recoveredValue5 := Array.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) size.
    recoveredValue8 := (recoveredValue5) new: (recoveredValue7).
    recoveredLocal2 := recoveredValue8.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := [:recoveredBlock31Arg1 :recoveredBlock31Arg2 | 
    | recoveredBlock31Stack0 recoveredBlock31Stack1 recoveredBlock31Stack2 recoveredBlock31Stack3 recoveredBlock31Stack4 recoveredBlock31PC recoveredBlock31Step recoveredBlock31Done recoveredBlock31Result |
    recoveredBlock31Stack0 := self.
    recoveredBlock31PC := 38.
    recoveredBlock31Done := false.
    [recoveredBlock31Done not] whileTrue: [
        recoveredBlock31Step := recoveredBlock31PC.
        recoveredBlock31Step = 38 ifTrue: [
            recoveredBlock31Stack1 := recoveredLocal3.
            recoveredBlock31PC := 41.
        ].
        recoveredBlock31Step = 41 ifTrue: [
            recoveredBlock31Stack2 := recoveredBlock31Arg2.
            recoveredBlock31PC := 42.
        ].
        recoveredBlock31Step = 42 ifTrue: [
            recoveredBlock31Stack3 := recoveredBlock31Arg1.
            recoveredBlock31PC := 43.
        ].
        recoveredBlock31Step = 43 ifTrue: [
            recoveredBlock31Stack3 := (recoveredBlock31Stack3) firstOrNil.
            recoveredBlock31PC := 45.
        ].
        recoveredBlock31Step = 45 ifTrue: [
            (recoveredBlock31Stack1) at: (recoveredBlock31Stack2) put: (recoveredBlock31Stack3).
            recoveredBlock31PC := 47.
        ].
        recoveredBlock31Step = 47 ifTrue: [
            recoveredBlock31Stack1 := recoveredLocal2.
            recoveredBlock31PC := 50.
        ].
        recoveredBlock31Step = 50 ifTrue: [
            recoveredBlock31Stack2 := recoveredBlock31Arg2.
            recoveredBlock31PC := 51.
        ].
        recoveredBlock31Step = 51 ifTrue: [
            recoveredBlock31Stack3 := recoveredBlock31Arg1.
            recoveredBlock31PC := 52.
        ].
        recoveredBlock31Step = 52 ifTrue: [
            recoveredBlock31Stack3 := (recoveredBlock31Stack3) lastOrNil.
            recoveredBlock31PC := 54.
        ].
        recoveredBlock31Step = 54 ifTrue: [
            recoveredBlock31Stack3 := (recoveredBlock31Stack3) isString.
            recoveredBlock31PC := 56.
        ].
        recoveredBlock31Step = 56 ifTrue: [
            (recoveredBlock31Stack3) ifTrue: [recoveredBlock31PC := 60] ifFalse: [recoveredBlock31PC := 66].
        ].
        recoveredBlock31Step = 60 ifTrue: [
            recoveredBlock31Stack3 := recoveredBlock31Arg1.
            recoveredBlock31PC := 61.
        ].
        recoveredBlock31Step = 61 ifTrue: [
            recoveredBlock31Stack3 := (recoveredBlock31Stack3) lastOrNil.
            recoveredBlock31PC := 63.
        ].
        recoveredBlock31Step = 63 ifTrue: [
            recoveredBlock31PC := 71.
        ].
        recoveredBlock31Step = 66 ifTrue: [
            recoveredBlock31Stack3 := recoveredBlock31Arg1.
            recoveredBlock31PC := 67.
        ].
        recoveredBlock31Step = 67 ifTrue: [
            recoveredBlock31Stack3 := (recoveredBlock31Stack3) lastOrNil.
            recoveredBlock31PC := 69.
        ].
        recoveredBlock31Step = 69 ifTrue: [
            recoveredBlock31Stack3 := (recoveredBlock31Stack3) text.
            recoveredBlock31PC := 71.
        ].
        recoveredBlock31Step = 71 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) at: (recoveredBlock31Stack2) put: (recoveredBlock31Stack3).
            recoveredBlock31PC := 73.
        ].
        recoveredBlock31Step = 73 ifTrue: [
            recoveredBlock31Result := recoveredBlock31Stack1.
            recoveredBlock31Done := true.
        ].
    ].
    recoveredBlock31Result
].
    (recoveredValue9) doWithIndex: (recoveredValue10).
    recoveredValue11 := Array.
    recoveredValue12 := recoveredLocal3.
    recoveredValue13 := recoveredLocal2.
    recoveredValue14 := (recoveredValue11) with: (recoveredValue12) with: (recoveredValue13).
    ^recoveredValue14
! !

"ASDBase.ic method 0x20460260; bytecode file offset 0xd5cb48"
!MDFStringTableFormula methodsFor: 'recovered'!
par
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) formulaNPar.
    recoveredValue2 := (recoveredValue1) + (-1).
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := [:recoveredBlock16Arg1 :recoveredBlock16Arg2 | 
    | recoveredBlock16Local1 recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16Stack4 recoveredBlock16Stack5 recoveredBlock16Stack6 recoveredBlock16Stack7 recoveredBlock16Stack8 recoveredBlock16Stack9 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := 62.
            recoveredBlock16PC := 24.
        ].
        recoveredBlock16Step = 24 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg2.
            recoveredBlock16PC := 25.
        ].
        recoveredBlock16Step = 25 ifTrue: [
            recoveredBlock16Stack3 := 20.
            recoveredBlock16PC := 27.
        ].
        recoveredBlock16Step = 27 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) * (recoveredBlock16Stack3).
            recoveredBlock16PC := 28.
        ].
        recoveredBlock16Step = 28 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) + (recoveredBlock16Stack2).
            recoveredBlock16PC := 29.
        ].
        recoveredBlock16Step = 29 ifTrue: [
            recoveredBlock16Stack2 := bytes.
            recoveredBlock16PC := 31.
        ].
        recoveredBlock16Step = 31 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) size.
            recoveredBlock16PC := 32.
        ].
        recoveredBlock16Step = 32 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) > (recoveredBlock16Stack2).
            recoveredBlock16PC := 33.
        ].
        recoveredBlock16Step = 33 ifTrue: [
            (recoveredBlock16Stack1) ifTrue: [recoveredBlock16PC := 36] ifFalse: [recoveredBlock16PC := 46].
        ].
        recoveredBlock16Step = 36 ifTrue: [
            recoveredBlock16Stack1 := recoveredLocal1.
            recoveredBlock16PC := 39.
        ].
        recoveredBlock16Step = 39 ifTrue: [
            recoveredBlock16Stack2 := 1.
            recoveredBlock16PC := 41.
        ].
        recoveredBlock16Step = 41 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Arg2.
            recoveredBlock16PC := 42.
        ].
        recoveredBlock16Step = 42 ifTrue: [
            recoveredBlock16Stack3 := (recoveredBlock16Stack3) + (-1).
            recoveredBlock16PC := 43.
        ].
        recoveredBlock16Step = 43 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) copyFrom: (recoveredBlock16Stack2) to: (recoveredBlock16Stack3).
            recoveredBlock16PC := 45.
        ].
        recoveredBlock16Step = 45 ifTrue: [
            ^recoveredBlock16Stack1
        ].
        recoveredBlock16Step = 46 ifTrue: [
            recoveredBlock16Stack1 := Array.
            recoveredBlock16PC := 48.
        ].
        recoveredBlock16Step = 48 ifTrue: [
            recoveredBlock16Stack2 := 2.
            recoveredBlock16PC := 50.
        ].
        recoveredBlock16Step = 50 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) new: (recoveredBlock16Stack2).
            recoveredBlock16PC := 51.
        ].
        recoveredBlock16Step = 51 ifTrue: [
            recoveredBlock16Local1 := recoveredBlock16Stack1.
            recoveredBlock16PC := 52.
        ].
        recoveredBlock16Step = 52 ifTrue: [
            recoveredBlock16Stack1 := recoveredLocal1.
            recoveredBlock16PC := 55.
        ].
        recoveredBlock16Step = 55 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg2.
            recoveredBlock16PC := 56.
        ].
        recoveredBlock16Step = 56 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Local1.
            recoveredBlock16PC := 57.
        ].
        recoveredBlock16Step = 57 ifTrue: [
            (recoveredBlock16Stack1) at: (recoveredBlock16Stack2) put: (recoveredBlock16Stack3).
            recoveredBlock16PC := 59.
        ].
        recoveredBlock16Step = 59 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local1.
            recoveredBlock16PC := 60.
        ].
        recoveredBlock16Step = 60 ifTrue: [
            recoveredBlock16Stack2 := 1.
            recoveredBlock16PC := 62.
        ].
        recoveredBlock16Step = 62 ifTrue: [
            recoveredBlock16Stack3 := RBInterval.
            recoveredBlock16PC := 64.
        ].
        recoveredBlock16Step = 64 ifTrue: [
            recoveredBlock16Stack4 := bytes.
            recoveredBlock16PC := 66.
        ].
        recoveredBlock16Step = 66 ifTrue: [
            recoveredBlock16Stack5 := 42.
            recoveredBlock16PC := 68.
        ].
        recoveredBlock16Step = 68 ifTrue: [
            recoveredBlock16Stack6 := recoveredBlock16Arg2.
            recoveredBlock16PC := 69.
        ].
        recoveredBlock16Step = 69 ifTrue: [
            recoveredBlock16Stack7 := 20.
            recoveredBlock16PC := 71.
        ].
        recoveredBlock16Step = 71 ifTrue: [
            recoveredBlock16Stack6 := (recoveredBlock16Stack6) * (recoveredBlock16Stack7).
            recoveredBlock16PC := 72.
        ].
        recoveredBlock16Step = 72 ifTrue: [
            recoveredBlock16Stack5 := (recoveredBlock16Stack5) + (recoveredBlock16Stack6).
            recoveredBlock16PC := 73.
        ].
        recoveredBlock16Step = 73 ifTrue: [
            recoveredBlock16Stack4 := (recoveredBlock16Stack4) real64At: (recoveredBlock16Stack5).
            recoveredBlock16PC := 75.
        ].
        recoveredBlock16Step = 75 ifTrue: [
            recoveredBlock16Stack5 := bytes.
            recoveredBlock16PC := 77.
        ].
        recoveredBlock16Step = 77 ifTrue: [
            recoveredBlock16Stack6 := 50.
            recoveredBlock16PC := 79.
        ].
        recoveredBlock16Step = 79 ifTrue: [
            recoveredBlock16Stack7 := recoveredBlock16Arg2.
            recoveredBlock16PC := 80.
        ].
        recoveredBlock16Step = 80 ifTrue: [
            recoveredBlock16Stack8 := 20.
            recoveredBlock16PC := 82.
        ].
        recoveredBlock16Step = 82 ifTrue: [
            recoveredBlock16Stack7 := (recoveredBlock16Stack7) * (recoveredBlock16Stack8).
            recoveredBlock16PC := 83.
        ].
        recoveredBlock16Step = 83 ifTrue: [
            recoveredBlock16Stack6 := (recoveredBlock16Stack6) + (recoveredBlock16Stack7).
            recoveredBlock16PC := 84.
        ].
        recoveredBlock16Step = 84 ifTrue: [
            recoveredBlock16Stack5 := (recoveredBlock16Stack5) real64At: (recoveredBlock16Stack6).
            recoveredBlock16PC := 86.
        ].
        recoveredBlock16Step = 86 ifTrue: [
            recoveredBlock16Stack3 := (recoveredBlock16Stack3) left: (recoveredBlock16Stack4) right: (recoveredBlock16Stack5).
            recoveredBlock16PC := 88.
        ].
        recoveredBlock16Step = 88 ifTrue: [
            (recoveredBlock16Stack1) at: (recoveredBlock16Stack2) put: (recoveredBlock16Stack3).
            recoveredBlock16PC := 90.
        ].
        recoveredBlock16Step = 90 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local1.
            recoveredBlock16PC := 91.
        ].
        recoveredBlock16Step = 91 ifTrue: [
            recoveredBlock16Stack2 := 2.
            recoveredBlock16PC := 93.
        ].
        recoveredBlock16Step = 93 ifTrue: [
            recoveredBlock16Stack3 := stringParameter.
            recoveredBlock16PC := 95.
        ].
        recoveredBlock16Step = 95 ifTrue: [
            recoveredBlock16Stack4 := recoveredBlock16Arg2.
            recoveredBlock16PC := 96.
        ].
        recoveredBlock16Step = 96 ifTrue: [
            recoveredBlock16Stack5 := [
    (self) etasDevHalt.
    ''
].
            recoveredBlock16PC := 107.
        ].
        recoveredBlock16Step = 107 ifTrue: [
            recoveredBlock16Stack3 := (recoveredBlock16Stack3) at: (recoveredBlock16Stack4) ifAbsent: (recoveredBlock16Stack5).
            recoveredBlock16PC := 109.
        ].
        recoveredBlock16Step = 109 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) at: (recoveredBlock16Stack2) put: (recoveredBlock16Stack3).
            recoveredBlock16PC := 111.
        ].
        recoveredBlock16Step = 111 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
    (recoveredValue4) doWithIndex: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20477700; bytecode file offset 0xd73fe8"
!MDFStringTableFormula methodsFor: 'recovered'!
par: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Local1 recoveredBlock12Local2 recoveredBlock12Local3 recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12Stack5 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := recoveredArg1.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) at: (recoveredBlock12Stack2).
            recoveredBlock12PC := 23.
        ].
        recoveredBlock12Step = 23 ifTrue: [
            recoveredBlock12Local3 := recoveredBlock12Stack1.
            recoveredBlock12PC := 24.
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Stack1 := recoveredArg1.
            recoveredBlock12PC := 27.
        ].
        recoveredBlock12Step = 27 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 28.
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) + (1).
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) at: (recoveredBlock12Stack2).
            recoveredBlock12PC := 30.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12Local2 := recoveredBlock12Stack1.
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            recoveredBlock12Stack1 := bytes.
            recoveredBlock12PC := 33.
        ].
        recoveredBlock12Step = 33 ifTrue: [
            recoveredBlock12Stack2 := 42.
            recoveredBlock12PC := 35.
        ].
        recoveredBlock12Step = 35 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Arg1.
            recoveredBlock12PC := 36.
        ].
        recoveredBlock12Step = 36 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) + (1).
            recoveredBlock12PC := 37.
        ].
        recoveredBlock12Step = 37 ifTrue: [
            recoveredBlock12Stack4 := 10.
            recoveredBlock12PC := 39.
        ].
        recoveredBlock12Step = 39 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) * (recoveredBlock12Stack4).
            recoveredBlock12PC := 40.
        ].
        recoveredBlock12Step = 40 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) + (recoveredBlock12Stack3).
            recoveredBlock12PC := 41.
        ].
        recoveredBlock12Step = 41 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Local3.
            recoveredBlock12PC := 42.
        ].
        recoveredBlock12Step = 42 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) left.
            recoveredBlock12PC := 43.
        ].
        recoveredBlock12Step = 43 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) asFloat.
            recoveredBlock12PC := 44.
        ].
        recoveredBlock12Step = 44 ifTrue: [
            (recoveredBlock12Stack1) real64At: (recoveredBlock12Stack2) put: (recoveredBlock12Stack3).
            recoveredBlock12PC := 46.
        ].
        recoveredBlock12Step = 46 ifTrue: [
            recoveredBlock12Stack1 := bytes.
            recoveredBlock12PC := 48.
        ].
        recoveredBlock12Step = 48 ifTrue: [
            recoveredBlock12Stack2 := 50.
            recoveredBlock12PC := 50.
        ].
        recoveredBlock12Step = 50 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Arg1.
            recoveredBlock12PC := 51.
        ].
        recoveredBlock12Step = 51 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) + (1).
            recoveredBlock12PC := 52.
        ].
        recoveredBlock12Step = 52 ifTrue: [
            recoveredBlock12Stack4 := 10.
            recoveredBlock12PC := 54.
        ].
        recoveredBlock12Step = 54 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) * (recoveredBlock12Stack4).
            recoveredBlock12PC := 55.
        ].
        recoveredBlock12Step = 55 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) + (recoveredBlock12Stack3).
            recoveredBlock12PC := 56.
        ].
        recoveredBlock12Step = 56 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Local3.
            recoveredBlock12PC := 57.
        ].
        recoveredBlock12Step = 57 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) right.
            recoveredBlock12PC := 59.
        ].
        recoveredBlock12Step = 59 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) asFloat.
            recoveredBlock12PC := 60.
        ].
        recoveredBlock12Step = 60 ifTrue: [
            (recoveredBlock12Stack1) real64At: (recoveredBlock12Stack2) put: (recoveredBlock12Stack3).
            recoveredBlock12PC := 62.
        ].
        recoveredBlock12Step = 62 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Local2.
            recoveredBlock12PC := 63.
        ].
        recoveredBlock12Step = 63 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) isString.
            recoveredBlock12PC := 65.
        ].
        recoveredBlock12Step = 65 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 68] ifFalse: [recoveredBlock12PC := 100].
        ].
        recoveredBlock12Step = 68 ifTrue: [
            recoveredBlock12Stack1 := MDFText.
            recoveredBlock12PC := 70.
        ].
        recoveredBlock12Step = 70 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Local2.
            recoveredBlock12PC := 71.
        ].
        recoveredBlock12Step = 71 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) create: (recoveredBlock12Stack2).
            recoveredBlock12PC := 73.
        ].
        recoveredBlock12Step = 73 ifTrue: [
            recoveredBlock12Local1 := recoveredBlock12Stack1.
            recoveredBlock12PC := 74.
        ].
        recoveredBlock12Step = 74 ifTrue: [
            recoveredBlock12Stack1 := bytes.
            recoveredBlock12PC := 76.
        ].
        recoveredBlock12Step = 76 ifTrue: [
            recoveredBlock12Stack2 := 58.
            recoveredBlock12PC := 78.
        ].
        recoveredBlock12Step = 78 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Arg1.
            recoveredBlock12PC := 79.
        ].
        recoveredBlock12Step = 79 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) + (1).
            recoveredBlock12PC := 80.
        ].
        recoveredBlock12Step = 80 ifTrue: [
            recoveredBlock12Stack4 := 10.
            recoveredBlock12PC := 82.
        ].
        recoveredBlock12Step = 82 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) * (recoveredBlock12Stack4).
            recoveredBlock12PC := 83.
        ].
        recoveredBlock12Step = 83 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) + (recoveredBlock12Stack3).
            recoveredBlock12PC := 84.
        ].
        recoveredBlock12Step = 84 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Local1.
            recoveredBlock12PC := 85.
        ].
        recoveredBlock12Step = 85 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) offset.
            recoveredBlock12PC := 87.
        ].
        recoveredBlock12Step = 87 ifTrue: [
            (recoveredBlock12Stack1) uint32At: (recoveredBlock12Stack2) put: (recoveredBlock12Stack3).
            recoveredBlock12PC := 89.
        ].
        recoveredBlock12Step = 89 ifTrue: [
            recoveredBlock12Stack1 := stringParameter.
            recoveredBlock12PC := 91.
        ].
        recoveredBlock12Step = 91 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Local1.
            recoveredBlock12PC := 92.
        ].
        recoveredBlock12Step = 92 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) add: (recoveredBlock12Stack2).
            recoveredBlock12PC := 94.
        ].
        recoveredBlock12Step = 94 ifTrue: [
            recoveredBlock12Stack2 := nil.
            recoveredBlock12PC := 95.
        ].
        recoveredBlock12Step = 95 ifTrue: [
            recoveredBlock12Local1 := recoveredBlock12Stack2.
            recoveredBlock12PC := 96.
        ].
        recoveredBlock12Step = 96 ifTrue: [
            recoveredBlock12PC := 120.
        ].
        recoveredBlock12Step = 100 ifTrue: [
            recoveredBlock12Stack1 := bytes.
            recoveredBlock12PC := 102.
        ].
        recoveredBlock12Step = 102 ifTrue: [
            recoveredBlock12Stack2 := 58.
            recoveredBlock12PC := 104.
        ].
        recoveredBlock12Step = 104 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Arg1.
            recoveredBlock12PC := 105.
        ].
        recoveredBlock12Step = 105 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) + (1).
            recoveredBlock12PC := 106.
        ].
        recoveredBlock12Step = 106 ifTrue: [
            recoveredBlock12Stack4 := 10.
            recoveredBlock12PC := 108.
        ].
        recoveredBlock12Step = 108 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) * (recoveredBlock12Stack4).
            recoveredBlock12PC := 109.
        ].
        recoveredBlock12Step = 109 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) + (recoveredBlock12Stack3).
            recoveredBlock12PC := 110.
        ].
        recoveredBlock12Step = 110 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Local2.
            recoveredBlock12PC := 111.
        ].
        recoveredBlock12Step = 111 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) offset.
            recoveredBlock12PC := 113.
        ].
        recoveredBlock12Step = 113 ifTrue: [
            (recoveredBlock12Stack1) uint32At: (recoveredBlock12Stack2) put: (recoveredBlock12Stack3).
            recoveredBlock12PC := 115.
        ].
        recoveredBlock12Step = 115 ifTrue: [
            recoveredBlock12Stack1 := stringParameter.
            recoveredBlock12PC := 117.
        ].
        recoveredBlock12Step = 117 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Local2.
            recoveredBlock12PC := 118.
        ].
        recoveredBlock12Step = 118 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) add: (recoveredBlock12Stack2).
            recoveredBlock12PC := 120.
        ].
        recoveredBlock12Step = 120 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (1) to: (recoveredValue1) by: (2) do: (recoveredValue2).
    ^self
! !

