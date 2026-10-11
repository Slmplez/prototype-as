"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000518; bytecode file offset 0x8ffcfc"
!AbtConverterBaseApp class methodsFor: 'recovered'!
_PRAGMA_AbtRunPartsStrings
    ^self
! !

"ASDBase.ic method 0x20002d60; bytecode file offset 0x8ffcfc"
!AbtConverterBaseApp class methodsFor: 'recovered'!
_PRAGMA_AbtConverterConstants
    ^self
! !

"ASDBase.ic method 0x20004d08; bytecode file offset 0x90206c"
!AbtConverterBaseApp class methodsFor: 'recovered'!
iniAction_Nothing: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2001acf0; bytecode file offset 0x92209c"
!AbtConverterBaseApp class methodsFor: 'recovered'!
iniSectionNames
    ^#('Visual Runtime')
! !

"ASDBase.ic method 0x2001b080; bytecode file offset 0x92209c"
!AbtConverterBaseApp class methodsFor: 'recovered'!
packagerKnownSymbols
    ^#('')
! !

"ASDBase.ic method 0x2004e3a8; bytecode file offset 0x94d048"
!AbtConverterBaseApp class methodsFor: 'recovered'!
startUp
    (self) readIni.
    ^self
! !

"ASDBase.ic method 0x2004e75c; bytecode file offset 0x94d048"
!AbtConverterBaseApp class methodsFor: 'recovered'!
failedRemove
    (self) loaded.
    ^self
! !

"ASDBase.ic method 0x20050040; bytecode file offset 0x94d048"
!AbtConverterBaseApp class methodsFor: 'recovered'!
preStartUp
    (self) installVaStringParmReplacePrintSelector.
    ^self
! !

"ASDBase.ic method 0x20053ee8; bytecode file offset 0x951190"
!AbtConverterBaseApp class methodsFor: 'recovered'!
utilizeNumericThousandsSeparatorOnInput: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    UtilizeNumericThousandsSeparatorOnInput := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2005bcb4; bytecode file offset 0x9585b4"
!AbtConverterBaseApp class methodsFor: 'recovered'!
utilizeNumericThousandsSeparatorOnInput
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := UtilizeNumericThousandsSeparatorOnInput.
    recoveredValue1 := (recoveredValue0) == (true).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005c1e4; bytecode file offset 0x958ab0"
!AbtConverterBaseApp class methodsFor: 'recovered'!
uninstallVaStringParmReplacePrintSelector
    | recoveredValue0 |
    recoveredValue0 := AbtNlsKernelApp.
    (recoveredValue0) initializeStringParmReplacePrintSelector.
    ^self
! !

"ASDBase.ic method 0x2009b98c; bytecode file offset 0x998260"
!AbtConverterBaseApp class methodsFor: 'recovered'!
installVaStringParmReplacePrintSelector
    | recoveredValue0 |
    recoveredValue0 := AbtNlsKernelApp.
    (recoveredValue0) stringParmReplacePrintSelector: ('convertToPrint').
    ^self
! !

"ASDBase.ic method 0x200b32e0; bytecode file offset 0x9afbb4"
!AbtConverterBaseApp class methodsFor: 'recovered'!
removing
    | recoveredValue0 |
    (self) uninstallVaStringParmReplacePrintSelector.
    recoveredValue0 := AbtPrimitiveStringConverter.
    (recoveredValue0) reinitialize.
    ^self
! !

"ASDBase.ic method 0x200bae3c; bytecode file offset 0x9b76f8"
!AbtConverterBaseApp class methodsFor: 'recovered'!
iniAction_UtilizeNumericThousandsSeparatorOnInput: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) = ('true').
    (self) utilizeNumericThousandsSeparatorOnInput: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201053ec; bytecode file offset 0xa01cb8"
!AbtConverterBaseApp class methodsFor: 'recovered'!
iniActionTable
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := ('utilizeNumericThousandsSeparatorOnInput') asLowercase.
    (recoveredValue2) at: (recoveredValue3) put: ('iniAction_UtilizeNumericThousandsSeparatorOnInput:').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2015f690; bytecode file offset 0xa5bf58"
!AbtConverterBaseApp class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 |
    (self) installVaStringParmReplacePrintSelector.
    recoveredValue0 := AbtIntegerConverter.
    (self) addImageEventDependent: (recoveredValue0).
    recoveredValue1 := AbtNumberConverter.
    (self) addImageEventDependent: (recoveredValue1).
    (self) relocalize.
    ^self
! !

"ASDBase.ic method 0x2016489c; bytecode file offset 0xa6115c"
!AbtConverterBaseApp class methodsFor: 'recovered'!
addImageEventDependent: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := imageEventDependents.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            imageEventDependents := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := imageEventDependents.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201fd830; bytecode file offset 0xafa0f0"
!AbtConverterBaseApp class methodsFor: 'recovered'!
relocalize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := imageEventDependents.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := imageEventDependents.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280d8798Arg1 | 
    | block280d8798Stack0 block280d8798Stack1 block280d8798Stack2 block280d8798Stack3 block280d8798PC block280d8798Step block280d8798Done block280d8798Result |
    block280d8798Stack0 := self.
    block280d8798PC := 4.
    block280d8798Done := false.
    [block280d8798Done not] whileTrue: [
        block280d8798Step := block280d8798PC.
        block280d8798Step = 4 ifTrue: [
            block280d8798Stack1 := nil.
            block280d8798PC := 5.
        ].
        block280d8798Step = 5 ifTrue: [
            block280d8798Stack2 := block280d8798Arg1.
            block280d8798PC := 6.
        ].
        block280d8798Step = 6 ifTrue: [
            (block280d8798Stack2 == nil) ifTrue: [block280d8798PC := 13] ifFalse: [block280d8798PC := 10].
        ].
        block280d8798Step = 10 ifTrue: [
            block280d8798PC := 11.
        ].
        block280d8798Step = 11 ifTrue: [
            block280d8798Stack1 := block280d8798Arg1.
            block280d8798PC := 12.
        ].
        block280d8798Step = 12 ifTrue: [
            block280d8798Stack1 := (block280d8798Stack1) abtRelocalize.
            block280d8798PC := 13.
        ].
        block280d8798Step = 13 ifTrue: [
            block280d8798Result := block280d8798Stack1.
            block280d8798Done := true.
        ].
    ].
    block280d8798Result
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026c2a4; bytecode file offset 0xb68b7c"
!AbtConverterBaseApp class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) initializeToNilClassVariable: ('InputDecimalSep') inClassNamed: ('AbtIntegerConverter').
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) initializeToNilClassVariable: ('IntegerInputFormatter') inClassNamed: ('AbtIntegerConverter').
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) initializeToNilClassVariable: ('InputThousandsSep') inClassNamed: ('AbtIntegerConverter').
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) initializeToNilClassVariable: ('NumberInputFormatter') inClassNamed: ('AbtNumberConverter').
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) initializeToNilClassVariable: ('Aliases') inClassNamed: ('AbtCharacterTranslator').
    ^self
! !

"ASDBase.ic method 0x2032e8f4; bytecode file offset 0xc2b1dc"
!AbtConverterBaseApp class methodsFor: 'recovered'!
readIni
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) iniActionTable.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) iniSectionNames.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 |
    recoveredBlock10Value0 := System.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := (recoveredBlock10Value0) iniFileGetContentsArray: (recoveredBlock10Value1).
    recoveredBlock10Value3 := [:recoveredBlock10Block20Arg1 | 
    | recoveredBlock10Block20Local1 recoveredBlock10Block20Stack0 recoveredBlock10Block20Stack1 recoveredBlock10Block20Stack2 recoveredBlock10Block20Stack3 recoveredBlock10Block20Stack4 recoveredBlock10Block20PC recoveredBlock10Block20Step recoveredBlock10Block20Done recoveredBlock10Block20Result |
    recoveredBlock10Block20Stack0 := self.
    recoveredBlock10Block20PC := 26.
    recoveredBlock10Block20Done := false.
    [recoveredBlock10Block20Done not] whileTrue: [
        recoveredBlock10Block20Step := recoveredBlock10Block20PC.
        recoveredBlock10Block20Step = 26 ifTrue: [
            recoveredBlock10Block20Stack1 := recoveredLocal1.
            recoveredBlock10Block20PC := 29.
        ].
        recoveredBlock10Block20Step = 29 ifTrue: [
            recoveredBlock10Block20Stack2 := recoveredBlock10Block20Arg1.
            recoveredBlock10Block20PC := 30.
        ].
        recoveredBlock10Block20Step = 30 ifTrue: [
            recoveredBlock10Block20Stack2 := (recoveredBlock10Block20Stack2) key.
            recoveredBlock10Block20PC := 32.
        ].
        recoveredBlock10Block20Step = 32 ifTrue: [
            recoveredBlock10Block20Stack2 := (recoveredBlock10Block20Stack2) asLowercase.
            recoveredBlock10Block20PC := 34.
        ].
        recoveredBlock10Block20Step = 34 ifTrue: [
            recoveredBlock10Block20Stack3 := [
    'iniAction_Nothing:'
].
            recoveredBlock10Block20PC := 36.
        ].
        recoveredBlock10Block20Step = 36 ifTrue: [
            recoveredBlock10Block20PC := 43.
        ].
        recoveredBlock10Block20Step = 43 ifTrue: [
            recoveredBlock10Block20Stack1 := (recoveredBlock10Block20Stack1) at: (recoveredBlock10Block20Stack2) ifAbsent: (recoveredBlock10Block20Stack3).
            recoveredBlock10Block20PC := 45.
        ].
        recoveredBlock10Block20Step = 45 ifTrue: [
            recoveredBlock10Block20Local1 := recoveredBlock10Block20Stack1.
            recoveredBlock10Block20PC := 46.
        ].
        recoveredBlock10Block20Step = 46 ifTrue: [
            recoveredBlock10Block20Stack1 := recoveredBlock10Block20Local1.
            recoveredBlock10Block20PC := 47.
        ].
        recoveredBlock10Block20Step = 47 ifTrue: [
            recoveredBlock10Block20Stack2 := recoveredBlock10Block20Arg1.
            recoveredBlock10Block20PC := 48.
        ].
        recoveredBlock10Block20Step = 48 ifTrue: [
            recoveredBlock10Block20Stack2 := (recoveredBlock10Block20Stack2) value.
            recoveredBlock10Block20PC := 50.
        ].
        recoveredBlock10Block20Step = 50 ifTrue: [
            recoveredBlock10Block20Stack0 := (recoveredBlock10Block20Stack0) perform: (recoveredBlock10Block20Stack1) with: (recoveredBlock10Block20Stack2).
            recoveredBlock10Block20PC := 52.
        ].
        recoveredBlock10Block20Step = 52 ifTrue: [
            recoveredBlock10Block20Result := recoveredBlock10Block20Stack0.
            recoveredBlock10Block20Done := true.
        ].
    ].
    recoveredBlock10Block20Result
].
    recoveredBlock10Value4 := (recoveredBlock10Value2) associationsDo: (recoveredBlock10Value3).
    recoveredBlock10Value4
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

