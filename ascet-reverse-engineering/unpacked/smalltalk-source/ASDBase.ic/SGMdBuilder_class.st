"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001440c; bytecode file offset 0x912098"
!SGMdBuilder class methodsFor: 'recovered'!
currentMdlBuilder
    | recoveredValue0 |
    recoveredValue0 := Current.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20015938; bytecode file offset 0x92209c"
!SGMdBuilder class methodsFor: 'recovered'!
autosarStandardReturnTypeLabel
    ^'Std_ReturnType'
! !

"ASDBase.ic method 0x2001e254; bytecode file offset 0x92209c"
!SGMdBuilder class methodsFor: 'recovered'!
copyAccessPrefixMethodName
    ^'copy'
! !

"ASDBase.ic method 0x2003c954; bytecode file offset 0x93920c"
!SGMdBuilder class methodsFor: 'recovered'!
isReset
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Keywords.
    recoveredValue1 := (recoveredValue0) isNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ce78; bytecode file offset 0x93bf94"
!SGMdBuilder class methodsFor: 'recovered'!
mdlANSICType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgTypeFactory.
    recoveredValue1 := (recoveredValue0) createAnsiCType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d058; bytecode file offset 0x93bf94"
!SGMdBuilder class methodsFor: 'recovered'!
mdlSIntType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgTypeFactory.
    recoveredValue1 := (recoveredValue0) createSignedIntegerType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e2d8; bytecode file offset 0x93bf94"
!SGMdBuilder class methodsFor: 'recovered'!
mdlUIntType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgTypeFactory.
    recoveredValue1 := (recoveredValue0) createUnsignedIntegerType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e4d8; bytecode file offset 0x93bf94"
!SGMdBuilder class methodsFor: 'recovered'!
mdlBoolType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgTypeFactory.
    recoveredValue1 := (recoveredValue0) createBooleanType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e8d8; bytecode file offset 0x93bf94"
!SGMdBuilder class methodsFor: 'recovered'!
mdlVoidType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgTypeFactory.
    recoveredValue1 := (recoveredValue0) createVoidType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ed38; bytecode file offset 0x93bf94"
!SGMdBuilder class methodsFor: 'recovered'!
mdlRealType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgTypeFactory.
    recoveredValue1 := (recoveredValue0) createRealType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f408; bytecode file offset 0x93bf94"
!SGMdBuilder class methodsFor: 'recovered'!
mdlRTEStandardReturnType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgTypeFactory.
    recoveredValue1 := (recoveredValue0) createARStandardReturnType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20048d14; bytecode file offset 0x945728"
!SGMdBuilder class methodsFor: 'recovered'!
reset
    Keywords := nil.
    ^self
! !

"ASDBase.ic method 0x20048dbc; bytecode file offset 0x945728"
!SGMdBuilder class methodsFor: 'recovered'!
resetCurrentMdlBuilder
    Current := nil.
    ^self
! !

"ASDBase.ic method 0x2004e3fc; bytecode file offset 0x94d048"
!SGMdBuilder class methodsFor: 'recovered'!
prepareCodeGeneration
    (self) resetCurrentMdlBuilder.
    ^self
! !

"ASDBase.ic method 0x20054320; bytecode file offset 0x951190"
!SGMdBuilder class methodsFor: 'recovered'!
setCurrentMdlBuilder: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    Current := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20096ac0; bytecode file offset 0x9937fc"
!SGMdBuilder class methodsFor: 'recovered'!
createWithContext: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) genContext: (recoveredValue2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x201434f8; bytecode file offset 0xa3fdc0"
!SGMdBuilder class methodsFor: 'recovered'!
mdlClassType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    (self) halt.
    recoveredValue0 := SGCgTypeFactory.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := ('...') , (recoveredValue3).
    recoveredValue5 := (recoveredValue0) createClassType: (recoveredValue1) id: (recoveredValue2) namespace: (recoveredValue4) attributes: (nil).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20304350; bytecode file offset 0xc00c24"
!SGMdBuilder class methodsFor: 'recovered'!
keywordsForIdentifier
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := KeywordsForIdentifier.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            KeywordsForIdentifier := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := KeywordsForIdentifier.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlSelfKey.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := (recoveredStack4) mdlSelfKey.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) thisName.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := (recoveredStack4) thisName.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := (recoveredStack3) resultName.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := (recoveredStack4) resultName.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) keyWordInfinity.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) keyWordInfinity.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := KeywordsForIdentifier.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20339c8c; bytecode file offset 0xc36564"
!SGMdBuilder class methodsFor: 'recovered'!
keywords
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Keywords.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 59] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            Keywords := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := Keywords.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlSelfKey.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := (recoveredStack4) mdlSelfKey.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) thisName.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := (recoveredStack4) thisName.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) resultName.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := (recoveredStack4) resultName.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := (recoveredStack3) dtName.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := (recoveredStack4) dtName.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) keyWordInfinity.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := (recoveredStack3) keyWordInfinity.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := Keywords.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203449f0; bytecode file offset 0xc412cc"
!SGMdBuilder class methodsFor: 'recovered'!
reservedNames: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            Keywords := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := [:block280ee020Arg1 | 
    | block280ee020Value0 block280ee020Value1 block280ee020Value2 block280ee020Value3 |
    block280ee020Value0 := Keywords.
    block280ee020Value1 := block280ee020Arg1.
    block280ee020Value2 := block280ee020Arg1.
    block280ee020Value3 := (block280ee020Value0) at: (block280ee020Value1) put: (block280ee020Value2).
    block280ee020Value3
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := Keywords.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlSelfKey.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := (recoveredStack4) mdlSelfKey.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) thisName.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := (recoveredStack4) thisName.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) resultName.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := (recoveredStack4) resultName.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) keyWordInfinity.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := (recoveredStack3) keyWordInfinity.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

