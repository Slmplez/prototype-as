"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200176a8; bytecode file offset 0x92209c"
!SGBdlInlinedSequence methodsFor: 'recovered'!
methodAliasName
    ^''
! !

"ASDBase.ic method 0x2001e7a0; bytecode file offset 0x92209c"
!SGBdlInlinedSequence methodsFor: 'recovered'!
errLabel
    ^'text specification'
! !

"ASDBase.ic method 0x20027b44; bytecode file offset 0x92454c"
!SGBdlInlinedSequence methodsFor: 'recovered'!
isBdlValid
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) isUndef.
    recoveredValue1 := (recoveredValue0) not.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20027f74; bytecode file offset 0x934580"
!SGBdlInlinedSequence methodsFor: 'recovered'!
block
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) port.
    recoveredValue1 := (recoveredValue0) block.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002bf84; bytecode file offset 0x934580"
!SGBdlInlinedSequence methodsFor: 'recovered'!
isUndef
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) code.
    recoveredValue1 := (recoveredValue0) isEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037ad4; bytecode file offset 0x934580"
!SGBdlInlinedSequence methodsFor: 'recovered'!
type
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) type.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e6a8; bytecode file offset 0x93bf94"
!SGBdlInlinedSequence methodsFor: 'recovered'!
bdeCode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := String.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006793c; bytecode file offset 0x9646f8"
!SGBdlInlinedSequence methodsFor: 'recovered'!
code
    | recoveredValue0 |
    recoveredValue0 := code.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006928c; bytecode file offset 0x965b90"
!SGBdlInlinedSequence methodsFor: 'recovered'!
port
    | recoveredValue0 |
    recoveredValue0 := port.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200b4144; bytecode file offset 0x9b0a08"
!SGBdlInlinedSequence methodsFor: 'recovered'!
mdlName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) methodAliasName.
    recoveredValue2 := (recoveredValue0) createMdlNameKey: (recoveredValue1) label: ('inlined sequence').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bf768; bytecode file offset 0x9bc0b4"
!SGBdlInlinedSequence methodsFor: 'recovered'!
code: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    code := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfa0c; bytecode file offset 0x9bd228"
!SGBdlInlinedSequence methodsFor: 'recovered'!
port: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    port := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cbc28; bytecode file offset 0x9c8654"
!SGBdlInlinedSequence methodsFor: 'recovered'!
nilVariables
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) with: ('parsedCode') with: ('parseResult').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2013e290; bytecode file offset 0xa3ab74"
!SGBdlInlinedSequence methodsFor: 'recovered'!
relevantCodeId
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isUndef.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := SGReservedNames.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) undefName.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) code.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) trimSeparators.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20160938; bytecode file offset 0xa5d1f8"
!SGBdlInlinedSequence methodsFor: 'recovered'!
outlineActionCode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isUndef.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) code.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := $;.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) occurrencesOf: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a6e44; bytecode file offset 0xaa3710"
!SGBdlInlinedSequence methodsFor: 'recovered'!
buidlMdlAction: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) esdlController.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) source.
    (recoveredValue1) masterSource: (recoveredValue2).
    recoveredValue3 := (self) code.
    recoveredValue4 := [
    | recoveredBlock12Value0 |
    recoveredBlock12Value0 := (self) signalLmError.
    recoveredBlock12Value0
].
    (recoveredValue0) parseStmntForSM: (recoveredValue3) ifFail: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2031ae40; bytecode file offset 0xc17744"
!SGBdlInlinedSequence methodsFor: 'recovered'!
source
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := SGLmASDLInlineSource.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) block.
    recoveredValue4 := (recoveredValue3) id.
    (recoveredValue2) methodId: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := (self) specification.
    (recoveredValue5) specification: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := (self) logicModel.
    (recoveredValue7) logicModel: (recoveredValue8).
    recoveredValue9 := recoveredValue1.
    recoveredValue10 := (self) configForModule.
    (recoveredValue9) valueConfig: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := (self) implForModule.
    (recoveredValue11) implConfig: (recoveredValue12).
    recoveredValue13 := recoveredValue1.
    recoveredValue14 := (self) context.
    (recoveredValue13) context: (recoveredValue14).
    recoveredValue15 := recoveredValue1.
    recoveredValue16 := (self) port.
    recoveredValue17 := (recoveredValue16) aliasName.
    (recoveredValue15) methodName: (recoveredValue17).
    recoveredValue18 := (self) block.
    recoveredValue19 := (recoveredValue18) errLabel.
    recoveredValue20 := (recoveredValue1) blockName: (recoveredValue19).
    ^recoveredValue20
! !

"ASDBase.ic method 0x203830fc; bytecode file offset 0xc7f9d4"
!SGBdlInlinedSequence methodsFor: 'recovered'!
buildMdlCondition: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) esdlController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) masterSource: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := parsedCode.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := parsedCode.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) code.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := parseResult.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) esdlController.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) code.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock34Value0 |
    recoveredBlock34Value0 := (self) signalLmError.
    recoveredBlock34Value0
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) parseExpr: (recoveredStack1) ifFail: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            parseResult := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) code.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            parsedCode := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) esdlController.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock56Value0 recoveredBlock56Value1 recoveredBlock56Value2 |
    recoveredBlock56Value0 := (self) esdlController.
    recoveredBlock56Value1 := parseResult.
    recoveredBlock56Value2 := (recoveredBlock56Value0) processIntermediateResults: (recoveredBlock56Value1).
    recoveredBlock56Value2
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) handleFatals: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

