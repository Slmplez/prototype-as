"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001168; bytecode file offset 0x8ffcfc"
!AbtCWAdditionsApp class methodsFor: 'recovered'!
_PRAGMA_AbtCwMsgBase
    ^self
! !

"ASDBase.ic method 0x200031b8; bytecode file offset 0x8ffcfc"
!AbtCWAdditionsApp class methodsFor: 'recovered'!
_PRAGMA_AbtCWAdditionsConstants
    ^self
! !

"ASDBase.ic method 0x20048bc4; bytecode file offset 0x945728"
!AbtCWAdditionsApp class methodsFor: 'recovered'!
removeAllSymbolicallyNamedFonts
    SymbolicallyNamedFonts := nil.
    ^self
! !

"ASDBase.ic method 0x20048db0; bytecode file offset 0x945728"
!AbtCWAdditionsApp class methodsFor: 'recovered'!
removeAllSymbolicallyNamedColors
    SymbolicallyNamedColors := nil.
    ^self
! !

"ASDBase.ic method 0x2004f9ec; bytecode file offset 0x94d048"
!AbtCWAdditionsApp class methodsFor: 'recovered'!
failedRemove
    (self) loaded.
    ^self
! !

"ASDBase.ic method 0x2004ff20; bytecode file offset 0x94d048"
!AbtCWAdditionsApp class methodsFor: 'recovered'!
preStartUp
    (self) resetNamedFonts.
    ^self
! !

"ASDBase.ic method 0x2005bd54; bytecode file offset 0x958ab0"
!AbtCWAdditionsApp class methodsFor: 'recovered'!
relocalize
    | recoveredValue0 |
    recoveredValue0 := AbtIconWidget.
    (recoveredValue0) resetDefaultFontName.
    ^self
! !

"ASDBase.ic method 0x200924b8; bytecode file offset 0x98ed78"
!AbtCWAdditionsApp class methodsFor: 'recovered'!
loadQueryFont: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CgDisplay.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) loadQueryFont: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a0ae0; bytecode file offset 0x99d3ac"
!AbtCWAdditionsApp class methodsFor: 'recovered'!
removing
    (self) abtUnregisterExternalStrings.
    (self) exiting.
    ^self
! !

"ASDBase.ic method 0x200ab558; bytecode file offset 0x9a8250"
!AbtCWAdditionsApp class methodsFor: 'recovered'!
symbolicallyNamedFontAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) symbolicallyNamedFonts.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ab97c; bytecode file offset 0x9a8250"
!AbtCWAdditionsApp class methodsFor: 'recovered'!
symbolicallyNamedColorAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) symbolicallyNamedColors.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ae6e8; bytecode file offset 0x9ab034"
!AbtCWAdditionsApp class methodsFor: 'recovered'!
symbolicallyNamedColorAt: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) symbolicallyNamedColors.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200bd1d0; bytecode file offset 0x9b9b80"
!AbtCWAdditionsApp class methodsFor: 'recovered'!
removeSymbolicallyNamedColor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) symbolicallyNamedColors.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    (recoveredValue0) removeKey: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200bd248; bytecode file offset 0x9b9b80"
!AbtCWAdditionsApp class methodsFor: 'recovered'!
removeSymbolicallyNamedFont: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) symbolicallyNamedFonts.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    (recoveredValue0) removeKey: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200e02c4; bytecode file offset 0x9dcbc0"
!AbtCWAdditionsApp class methodsFor: 'recovered'!
abtExternalizedStringBuildingInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: ('abtcw?40') with: (false) with: (true).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20139fb0; bytecode file offset 0xa3686c"
!AbtCWAdditionsApp class methodsFor: 'recovered'!
resetNamedFonts
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := NamedFonts.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := NamedFonts.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            NamedFonts := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016495c; bytecode file offset 0xa6121c"
!AbtCWAdditionsApp class methodsFor: 'recovered'!
imageEventDependent: recoveredArg1
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

"ASDBase.ic method 0x20168284; bytecode file offset 0xa64b40"
!AbtCWAdditionsApp class methodsFor: 'recovered'!
colorNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) symbolicallyNamedColors.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value0
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201758c8; bytecode file offset 0xa7218c"
!AbtCWAdditionsApp class methodsFor: 'recovered'!
freeFontStruct: recoveredArg1
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := CgDisplay.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) default.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultFontStruct.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) freeFont.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017e790; bytecode file offset 0xa7b0dc"
!AbtCWAdditionsApp class methodsFor: 'recovered'!
symbolicallyNamedFonts
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SymbolicallyNamedFonts.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            SymbolicallyNamedFonts := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := SymbolicallyNamedFonts.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017e81c; bytecode file offset 0xa7b0dc"
!AbtCWAdditionsApp class methodsFor: 'recovered'!
symbolicallyNamedColors
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SymbolicallyNamedColors.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            SymbolicallyNamedColors := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := SymbolicallyNamedColors.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201c6efc; bytecode file offset 0xac37c0"
!AbtCWAdditionsApp class methodsFor: 'recovered'!
namedFonts
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := NamedFonts.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := AbtWeakValueLookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 'freeFontStruct:'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner: (recoveredStack2) finalizeSelector: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            NamedFonts := recoveredStack2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := NamedFonts.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201df1d8; bytecode file offset 0xadbaa0"
!AbtCWAdditionsApp class methodsFor: 'recovered'!
fontListNamed: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) fontStructNamed: (recoveredStack1).
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := CwFontList.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := CgFontStruct.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontStruct: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := CwFontList.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontStruct: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201df4ec; bytecode file offset 0xadbdb8"
!AbtCWAdditionsApp class methodsFor: 'recovered'!
colorRGBNamed: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) symbolicallyNamedColors.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := CgScreen.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookupColor: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201fd8c8; bytecode file offset 0xafa19c"
!AbtCWAdditionsApp class methodsFor: 'recovered'!
startUp
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
            recoveredStack2 := [:block280d8870Arg1 | 
    | block280d8870Stack0 block280d8870Stack1 block280d8870Stack2 block280d8870Stack3 block280d8870PC block280d8870Step block280d8870Done block280d8870Result |
    block280d8870Stack0 := self.
    block280d8870PC := 4.
    block280d8870Done := false.
    [block280d8870Done not] whileTrue: [
        block280d8870Step := block280d8870PC.
        block280d8870Step = 4 ifTrue: [
            block280d8870Stack1 := nil.
            block280d8870PC := 5.
        ].
        block280d8870Step = 5 ifTrue: [
            block280d8870Stack2 := block280d8870Arg1.
            block280d8870PC := 6.
        ].
        block280d8870Step = 6 ifTrue: [
            (block280d8870Stack2 == nil) ifTrue: [block280d8870PC := 13] ifFalse: [block280d8870PC := 10].
        ].
        block280d8870Step = 10 ifTrue: [
            block280d8870PC := 11.
        ].
        block280d8870Step = 11 ifTrue: [
            block280d8870Stack1 := block280d8870Arg1.
            block280d8870PC := 12.
        ].
        block280d8870Step = 12 ifTrue: [
            block280d8870Stack1 := (block280d8870Stack1) startUp.
            block280d8870PC := 13.
        ].
        block280d8870Step = 13 ifTrue: [
            block280d8870Result := block280d8870Stack1.
            block280d8870Done := true.
        ].
    ].
    block280d8870Result
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

"ASDBase.ic method 0x202478cc; bytecode file offset 0xb441a4"
!AbtCWAdditionsApp class methodsFor: 'recovered'!
loaded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AbtGraphicsDescriptor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) withAllSubclasses.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (self) imageEventDependent: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) abtRegisterExternalStrings.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) relocalize.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) imageStarted.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) startUp.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026c2f8; bytecode file offset 0xb68bd8"
!AbtCWAdditionsApp class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) initializeToNilClassVariable: ('Pixmaps') inClassNamed: ('AbtGraphicsDescriptor').
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) initializeToNilClassVariable: ('Bitmaps') inClassNamed: ('AbtBitmapDescriptor').
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) initializeToNilClassVariable: ('Icons') inClassNamed: ('AbtIconDescriptor').
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) initializeToNilClassVariable: ('Images') inClassNamed: ('AbtImageDescriptor').
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) initializeToNilClassVariable: ('NamedFonts') inClassNamed: ('AbtCWAdditionsApp').
    ^self
! !

"ASDBase.ic method 0x20343ce8; bytecode file offset 0xc405bc"
!AbtCWAdditionsApp class methodsFor: 'recovered'!
exiting
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
            recoveredStack2 := [:block280edf6cArg1 | 
    | block280edf6cStack0 block280edf6cStack1 block280edf6cStack2 block280edf6cStack3 block280edf6cPC block280edf6cStep block280edf6cDone block280edf6cResult |
    block280edf6cStack0 := self.
    block280edf6cPC := 4.
    block280edf6cDone := false.
    [block280edf6cDone not] whileTrue: [
        block280edf6cStep := block280edf6cPC.
        block280edf6cStep = 4 ifTrue: [
            block280edf6cStack1 := nil.
            block280edf6cPC := 5.
        ].
        block280edf6cStep = 5 ifTrue: [
            block280edf6cStack2 := block280edf6cArg1.
            block280edf6cPC := 6.
        ].
        block280edf6cStep = 6 ifTrue: [
            (block280edf6cStack2 == nil) ifTrue: [block280edf6cPC := 13] ifFalse: [block280edf6cPC := 10].
        ].
        block280edf6cStep = 10 ifTrue: [
            block280edf6cPC := 11.
        ].
        block280edf6cStep = 11 ifTrue: [
            block280edf6cStack1 := block280edf6cArg1.
            block280edf6cPC := 12.
        ].
        block280edf6cStep = 12 ifTrue: [
            block280edf6cStack1 := (block280edf6cStack1) exiting.
            block280edf6cPC := 13.
        ].
        block280edf6cStep = 13 ifTrue: [
            block280edf6cResult := block280edf6cStack1.
            block280edf6cDone := true.
        ].
    ].
    block280edf6cResult
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
            recoveredStack1 := NamedFonts.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 59] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := NamedFonts.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := [:block280edf90Arg1 | 
    | block280edf90Stack0 block280edf90Stack1 block280edf90Stack2 block280edf90Stack3 block280edf90PC block280edf90Step block280edf90Done block280edf90Result |
    block280edf90Stack0 := self.
    block280edf90PC := 4.
    block280edf90Done := false.
    [block280edf90Done not] whileTrue: [
        block280edf90Step := block280edf90PC.
        block280edf90Step = 4 ifTrue: [
            block280edf90Stack1 := nil.
            block280edf90PC := 5.
        ].
        block280edf90Step = 5 ifTrue: [
            block280edf90Stack2 := block280edf90Arg1.
            block280edf90PC := 6.
        ].
        block280edf90Step = 6 ifTrue: [
            (block280edf90Stack2 == nil) ifTrue: [block280edf90PC := 14] ifFalse: [block280edf90PC := 10].
        ].
        block280edf90Step = 10 ifTrue: [
            block280edf90PC := 11.
        ].
        block280edf90Step = 11 ifTrue: [
            block280edf90Stack1 := block280edf90Arg1.
            block280edf90PC := 12.
        ].
        block280edf90Step = 12 ifTrue: [
            block280edf90Stack1 := (block280edf90Stack1) freeFont.
            block280edf90PC := 14.
        ].
        block280edf90Step = 14 ifTrue: [
            block280edf90Result := block280edf90Stack1.
            block280edf90Done := true.
        ].
    ].
    block280edf90Result
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) resetNamedFonts.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c3100; bytecode file offset 0xcbf9cc"
!AbtCWAdditionsApp class methodsFor: 'recovered'!
fontStructNamed: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) namedFonts.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) symbolicallyNamedFonts.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock33Value0 |
    recoveredBlock33Value0 := recoveredArg1.
    recoveredBlock33Value0
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadQueryFont: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) namedFonts.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20432ba8; bytecode file offset 0xd2f484"
!AbtCWAdditionsApp class methodsFor: 'recovered'!
symbolicallyNamedFontAt: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) symbolicallyNamedFonts.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8Stack5 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            (recoveredBlock8Stack2 == nil) ifTrue: [recoveredBlock8PC := 91] ifFalse: [recoveredBlock8PC := 22].
        ].
        recoveredBlock8Step = 22 ifTrue: [
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 24.
        ].
        recoveredBlock8Step = 24 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) namedFonts.
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 28.
        ].
        recoveredBlock8Step = 28 ifTrue: [
            recoveredBlock8Stack3 := [:recoveredBlock8Block28Arg1 | 
    | recoveredBlock8Block28Local1 recoveredBlock8Block28Stack0 recoveredBlock8Block28Stack1 recoveredBlock8Block28Stack2 recoveredBlock8Block28Stack3 recoveredBlock8Block28Stack4 recoveredBlock8Block28PC recoveredBlock8Block28Step recoveredBlock8Block28Done recoveredBlock8Block28Result |
    recoveredBlock8Block28Stack0 := self.
    recoveredBlock8Block28PC := 34.
    recoveredBlock8Block28Done := false.
    [recoveredBlock8Block28Done not] whileTrue: [
        recoveredBlock8Block28Step := recoveredBlock8Block28PC.
        recoveredBlock8Block28Step = 34 ifTrue: [
            recoveredBlock8Block28PC := 59.
        ].
        recoveredBlock8Block28Step = 38 ifTrue: [
            recoveredBlock8Block28Stack1 := self.
            recoveredBlock8Block28PC := 39.
        ].
        recoveredBlock8Block28Step = 39 ifTrue: [
            recoveredBlock8Block28Stack1 := (recoveredBlock8Block28Stack1) namedFonts.
            recoveredBlock8Block28PC := 40.
        ].
        recoveredBlock8Block28Step = 40 ifTrue: [
            recoveredBlock8Block28Stack2 := Time.
            recoveredBlock8Block28PC := 42.
        ].
        recoveredBlock8Block28Step = 42 ifTrue: [
            recoveredBlock8Block28Stack2 := (recoveredBlock8Block28Stack2) microsecondClockValue.
            recoveredBlock8Block28PC := 43.
        ].
        recoveredBlock8Block28Step = 43 ifTrue: [
            recoveredBlock8Block28Stack3 := [
    | recoveredBlock8Block28Block43Value0 |
    recoveredBlock8Block28Block43Value0 := recoveredBlock8Block28Arg1.
    recoveredBlock8Block28Block43Value0
].
            recoveredBlock8Block28PC := 54.
        ].
        recoveredBlock8Block28Step = 54 ifTrue: [
            recoveredBlock8Block28Stack1 := (recoveredBlock8Block28Stack1) at: (recoveredBlock8Block28Stack2) ifAbsentPut: (recoveredBlock8Block28Stack3).
            recoveredBlock8Block28PC := 56.
        ].
        recoveredBlock8Block28Step = 56 ifTrue: [
            recoveredBlock8Block28Local1 := recoveredBlock8Block28Stack1.
            recoveredBlock8Block28PC := 59.
        ].
        recoveredBlock8Block28Step = 59 ifTrue: [
            recoveredBlock8Block28Stack1 := recoveredBlock8Block28Local1.
            recoveredBlock8Block28PC := 62.
        ].
        recoveredBlock8Block28Step = 62 ifTrue: [
            recoveredBlock8Block28Stack2 := recoveredBlock8Block28Arg1.
            recoveredBlock8Block28PC := 65.
        ].
        recoveredBlock8Block28Step = 65 ifTrue: [
            (recoveredBlock8Block28Stack1 ~~ recoveredBlock8Block28Stack2) ifTrue: [recoveredBlock8Block28PC := 38] ifFalse: [recoveredBlock8Block28PC := 67].
        ].
        recoveredBlock8Block28Step = 67 ifTrue: [
            recoveredBlock8Block28Stack0 := (recoveredBlock8Block28Stack0) namedFonts.
            recoveredBlock8Block28PC := 68.
        ].
        recoveredBlock8Block28Step = 68 ifTrue: [
            recoveredBlock8Block28Stack1 := recoveredBlock8Arg1.
            recoveredBlock8Block28PC := 71.
        ].
        recoveredBlock8Block28Step = 71 ifTrue: [
            recoveredBlock8Block28Stack2 := [].
            recoveredBlock8Block28PC := 73.
        ].
        recoveredBlock8Block28Step = 73 ifTrue: [
            recoveredBlock8Block28Stack0 := (recoveredBlock8Block28Stack0) removeKey: (recoveredBlock8Block28Stack1) ifAbsent: (recoveredBlock8Block28Stack2).
            recoveredBlock8Block28PC := 75.
        ].
        recoveredBlock8Block28Step = 75 ifTrue: [
            recoveredBlock8Block28Result := recoveredBlock8Block28Stack0.
            recoveredBlock8Block28Done := true.
        ].
    ].
    recoveredBlock8Block28Result
].
            recoveredBlock8PC := 76.
        ].
        recoveredBlock8Step = 76 ifTrue: [
            (recoveredBlock8Stack1) at: (recoveredBlock8Stack2) ifPresent: (recoveredBlock8Stack3).
            recoveredBlock8PC := 78.
        ].
        recoveredBlock8Step = 78 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 79.
        ].
        recoveredBlock8Step = 79 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) namedFonts.
            recoveredBlock8PC := 80.
        ].
        recoveredBlock8Step = 80 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 83.
        ].
        recoveredBlock8Step = 83 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Arg1.
            recoveredBlock8PC := 86.
        ].
        recoveredBlock8Step = 86 ifTrue: [
            recoveredBlock8Stack4 := [].
            recoveredBlock8PC := 88.
        ].
        recoveredBlock8Step = 88 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) abrRenameKey: (recoveredBlock8Stack2) to: (recoveredBlock8Stack3) ifAbsent: (recoveredBlock8Stack4).
            recoveredBlock8PC := 91.
        ].
        recoveredBlock8Step = 91 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue0) at: (recoveredValue1) ifPresent: (recoveredValue2).
    recoveredValue3 := (self) symbolicallyNamedFonts.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue3) at: (recoveredValue4) put: (recoveredValue5).
    ^self
! !

