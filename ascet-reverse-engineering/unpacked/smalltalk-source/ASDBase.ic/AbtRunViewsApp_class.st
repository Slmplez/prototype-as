"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000a78; bytecode file offset 0x8ffcfc"
!AbtRunViewsApp class methodsFor: 'recovered'!
_PRAGMA_AbtRunViewsStrings
    ^self
! !

"ASDBase.ic method 0x20000c78; bytecode file offset 0x8ffcfc"
!AbtRunViewsApp class methodsFor: 'recovered'!
_PRAGMA_WidgetCreationExtensions
    ^self
! !

"ASDBase.ic method 0x20001218; bytecode file offset 0x8ffcfc"
!AbtRunViewsApp class methodsFor: 'recovered'!
_PRAGMA_WidgetInitializationExtensions
    ^self
! !

"ASDBase.ic method 0x20001670; bytecode file offset 0x8ffcfc"
!AbtRunViewsApp class methodsFor: 'recovered'!
_PRAGMA_AbtRunViewsConstants
    ^self
! !

"ASDBase.ic method 0x2004f038; bytecode file offset 0x94d048"
!AbtRunViewsApp class methodsFor: 'recovered'!
failedRemove
    (self) loaded.
    ^self
! !

"ASDBase.ic method 0x2004f500; bytecode file offset 0x94d048"
!AbtRunViewsApp class methodsFor: 'recovered'!
removing
    (self) abtUnregisterExternalStrings.
    ^self
! !

"ASDBase.ic method 0x200543a4; bytecode file offset 0x951190"
!AbtRunViewsApp class methodsFor: 'recovered'!
widgetInitializationExtensions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    WidgetInitializationExtensions := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20054758; bytecode file offset 0x951190"
!AbtRunViewsApp class methodsFor: 'recovered'!
widgetCreationExtensions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    WidgetCreationExtensions := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20058018; bytecode file offset 0x956284"
!AbtRunViewsApp class methodsFor: 'recovered'!
registerWidgetInitializationExtension: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) widgetInitializationExtensions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) add: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058718; bytecode file offset 0x956284"
!AbtRunViewsApp class methodsFor: 'recovered'!
registerWidgetCreationExtension: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) widgetCreationExtensions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) add: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005be74; bytecode file offset 0x958ab0"
!AbtRunViewsApp class methodsFor: 'recovered'!
startUp
    | recoveredValue0 |
    recoveredValue0 := AbtShellView.
    (recoveredValue0) initializeReplaceableActions.
    ^self
! !

"ASDBase.ic method 0x200ab65c; bytecode file offset 0x9a8250"
!AbtRunViewsApp class methodsFor: 'recovered'!
unregisterWidgetCreationExtension: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) widgetCreationExtensions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) remove: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ab814; bytecode file offset 0x9a8250"
!AbtRunViewsApp class methodsFor: 'recovered'!
unregisterWidgetInitializationExtension: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) widgetInitializationExtensions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) remove: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e0274; bytecode file offset 0x9dcbc0"
!AbtRunViewsApp class methodsFor: 'recovered'!
abtExternalizedStringBuildingInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: ('abtvr?40') with: (false) with: (true).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200f6af4; bytecode file offset 0x9f33b8"
!AbtRunViewsApp class methodsFor: 'recovered'!
loaded
    | recoveredValue0 |
    (self) abtRegisterExternalStrings.
    (self) relocalize.
    recoveredValue0 := AbtShellView.
    (recoveredValue0) initializeReplaceableActionsIfEmpty.
    ^self
! !

"ASDBase.ic method 0x2013a0a0; bytecode file offset 0xa369dc"
!AbtRunViewsApp class methodsFor: 'recovered'!
widgetCreationExtensions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := WidgetCreationExtensions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := Set.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) widgetCreationExtensions: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := WidgetCreationExtensions.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013a0d0; bytecode file offset 0xa369dc"
!AbtRunViewsApp class methodsFor: 'recovered'!
widgetInitializationExtensions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := WidgetInitializationExtensions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := Set.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) widgetInitializationExtensions: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := WidgetInitializationExtensions.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2032e688; bytecode file offset 0xc2af5c"
!AbtRunViewsApp class methodsFor: 'recovered'!
exiting
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AbtShellView.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) allAbtShellViews.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:recoveredBlock7Arg1 | 
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
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) primaryWidget.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            (recoveredBlock7Stack2 == nil) ifTrue: [recoveredBlock7PC := 45] ifFalse: [recoveredBlock7PC := 20].
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) primaryWidget.
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) isDestroyed.
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 45] ifFalse: [recoveredBlock7PC := 26].
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) primaryWidget.
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) isRealized.
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 36] ifFalse: [recoveredBlock7PC := 45].
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredBlock7PC := 37.
        ].
        recoveredBlock7Step = 37 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 38.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) primaryWidget.
            recoveredBlock7PC := 39.
        ].
        recoveredBlock7Step = 39 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 40.
        ].
        recoveredBlock7Step = 40 ifTrue: [
            recoveredLocal1 := recoveredBlock7Stack2.
            recoveredBlock7PC := 43.
        ].
        recoveredBlock7Step = 43 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) unmapWidget.
            recoveredBlock7PC := 45.
        ].
        recoveredBlock7Step = 45 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 59] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) updateDisplay.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20335eac; bytecode file offset 0xc32784"
!AbtRunViewsApp class methodsFor: 'recovered'!
packagerIncludeSelectors
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) withAllSubApplications.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) defined.
    recoveredBlock11Value2 := [:recoveredBlock11Block20Arg1 | 
    | recoveredBlock11Block20Stack0 recoveredBlock11Block20Stack1 recoveredBlock11Block20Stack2 recoveredBlock11Block20Stack3 recoveredBlock11Block20Stack4 recoveredBlock11Block20PC recoveredBlock11Block20Step recoveredBlock11Block20Done recoveredBlock11Block20Result |
    recoveredBlock11Block20Stack0 := nil.
    recoveredBlock11Block20PC := 26.
    recoveredBlock11Block20Done := false.
    [recoveredBlock11Block20Done not] whileTrue: [
        recoveredBlock11Block20Step := recoveredBlock11Block20PC.
        recoveredBlock11Block20Step = 26 ifTrue: [
            recoveredBlock11Block20Stack1 := nil.
            recoveredBlock11Block20PC := 27.
        ].
        recoveredBlock11Block20Step = 27 ifTrue: [
            recoveredBlock11Block20Stack2 := recoveredBlock11Block20Arg1.
            recoveredBlock11Block20PC := 28.
        ].
        recoveredBlock11Block20Step = 28 ifTrue: [
            recoveredBlock11Block20Stack3 := AbtBasicView.
            recoveredBlock11Block20PC := 30.
        ].
        recoveredBlock11Block20Step = 30 ifTrue: [
            (recoveredBlock11Block20Stack2 == recoveredBlock11Block20Stack3) ifTrue: [recoveredBlock11Block20PC := 42] ifFalse: [recoveredBlock11Block20PC := 34].
        ].
        recoveredBlock11Block20Step = 34 ifTrue: [
            recoveredBlock11Block20Stack2 := recoveredBlock11Block20Arg1.
            recoveredBlock11Block20PC := 35.
        ].
        recoveredBlock11Block20Step = 35 ifTrue: [
            recoveredBlock11Block20Stack3 := AbtBasicView.
            recoveredBlock11Block20PC := 37.
        ].
        recoveredBlock11Block20Step = 37 ifTrue: [
            recoveredBlock11Block20Stack2 := (recoveredBlock11Block20Stack2) inheritsFrom: (recoveredBlock11Block20Stack3).
            recoveredBlock11Block20PC := 39.
        ].
        recoveredBlock11Block20Step = 39 ifTrue: [
            (recoveredBlock11Block20Stack2) ifTrue: [recoveredBlock11Block20PC := 42] ifFalse: [recoveredBlock11Block20PC := 51].
        ].
        recoveredBlock11Block20Step = 42 ifTrue: [
            recoveredBlock11Block20PC := 43.
        ].
        recoveredBlock11Block20Step = 43 ifTrue: [
            recoveredBlock11Block20Stack1 := recoveredLocal1.
            recoveredBlock11Block20PC := 46.
        ].
        recoveredBlock11Block20Step = 46 ifTrue: [
            recoveredBlock11Block20Stack2 := recoveredBlock11Block20Arg1.
            recoveredBlock11Block20PC := 47.
        ].
        recoveredBlock11Block20Step = 47 ifTrue: [
            recoveredBlock11Block20Stack2 := (recoveredBlock11Block20Stack2) packagerIncludeSelectors.
            recoveredBlock11Block20PC := 49.
        ].
        recoveredBlock11Block20Step = 49 ifTrue: [
            recoveredBlock11Block20Stack1 := (recoveredBlock11Block20Stack1) addAll: (recoveredBlock11Block20Stack2).
            recoveredBlock11Block20PC := 51.
        ].
        recoveredBlock11Block20Step = 51 ifTrue: [
            recoveredBlock11Block20Result := recoveredBlock11Block20Stack1.
            recoveredBlock11Block20Done := true.
        ].
    ].
    recoveredBlock11Block20Result
].
    recoveredBlock11Value3 := (recoveredBlock11Value1) do: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20469dfc; bytecode file offset 0xd666f4"
!AbtRunViewsApp class methodsFor: 'recovered'!
epSymbolReferenceAdjustmentsFor: recoveredArg1 in: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) methodClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := AbtBasicView.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) selector.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'postCreationInitialization'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := #(#('addHelpCallback') nil).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodClass.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := AbtCompositeView.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) selector.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'hoverHelpEnabled:'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := #(nil #('addedChild:toHoverHelpArea:' 'removedChild:fromHoverHelpArea:')).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) selector.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 'addedChild:'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := #(#('addedChild:toHoverHelpArea:') nil).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) selector.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 'postCreationInitialization'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := #(#('registerHoverHelpArea:') nil).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) selector.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := 'removedChild:'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := #(#('removedChild:fromHoverHelpArea:') nil).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodClass.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := AbtCwMenuView.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) selector.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := 'postCreationInitialization'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := #(#('addHelpCallback') nil).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodClass.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := AbtShellView.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 119].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) selector.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := 'clearWidgets'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 119].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := #(#('hoverHelpDescriptor') nil).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20487554; bytecode file offset 0xd83efc"
!AbtRunViewsApp class methodsFor: 'recovered'!
widgetInitializationExtensionsForPackagedImage: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Set new'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := WidgetInitializationExtensions.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 125].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) rulePolicy.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) packager.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubApplicationsInApplicationPrerequisiteChain.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := WidgetInitializationExtensions.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := WidgetInitializationExtensions.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Stack0 recoveredBlock38Stack1 recoveredBlock38Stack2 recoveredBlock38Stack3 recoveredBlock38Stack4 recoveredBlock38PC recoveredBlock38Step recoveredBlock38Done recoveredBlock38Result |
    recoveredBlock38Stack0 := self.
    recoveredBlock38PC := 44.
    recoveredBlock38Done := false.
    [recoveredBlock38Done not] whileTrue: [
        recoveredBlock38Step := recoveredBlock38PC.
        recoveredBlock38Step = 44 ifTrue: [
            recoveredBlock38Stack1 := nil.
            recoveredBlock38PC := 45.
        ].
        recoveredBlock38Step = 45 ifTrue: [
            recoveredBlock38Stack2 := AbtBasicView.
            recoveredBlock38PC := 47.
        ].
        recoveredBlock38Step = 47 ifTrue: [
            recoveredBlock38Stack3 := recoveredBlock38Arg1.
            recoveredBlock38PC := 48.
        ].
        recoveredBlock38Step = 48 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) applicationFor: (recoveredBlock38Stack3).
            recoveredBlock38PC := 50.
        ].
        recoveredBlock38Step = 50 ifTrue: [
            recoveredBlock38Stack3 := recoveredBlock38Stack2.
            recoveredBlock38PC := 51.
        ].
        recoveredBlock38Step = 51 ifTrue: [
            recoveredLocal3 := recoveredBlock38Stack3.
            recoveredBlock38PC := 54.
        ].
        recoveredBlock38Step = 54 ifTrue: [
            (recoveredBlock38Stack2 == nil) ifTrue: [recoveredBlock38PC := 70] ifFalse: [recoveredBlock38PC := 58].
        ].
        recoveredBlock38Step = 58 ifTrue: [
            recoveredBlock38Stack2 := recoveredLocal2.
            recoveredBlock38PC := 61.
        ].
        recoveredBlock38Step = 61 ifTrue: [
            recoveredBlock38Stack3 := recoveredLocal3.
            recoveredBlock38PC := 64.
        ].
        recoveredBlock38Step = 64 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) includes: (recoveredBlock38Stack3).
            recoveredBlock38PC := 66.
        ].
        recoveredBlock38Step = 66 ifTrue: [
            (recoveredBlock38Stack2) ifTrue: [recoveredBlock38PC := 79] ifFalse: [recoveredBlock38PC := 70].
        ].
        recoveredBlock38Step = 70 ifTrue: [
            recoveredBlock38PC := 71.
        ].
        recoveredBlock38Step = 71 ifTrue: [
            recoveredBlock38Stack1 := recoveredLocal4.
            recoveredBlock38PC := 74.
        ].
        recoveredBlock38Step = 74 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Arg1.
            recoveredBlock38PC := 75.
        ].
        recoveredBlock38Step = 75 ifTrue: [
            recoveredBlock38Stack3 := [].
            recoveredBlock38PC := 77.
        ].
        recoveredBlock38Step = 77 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) remove: (recoveredBlock38Stack2) ifAbsent: (recoveredBlock38Stack3).
            recoveredBlock38PC := 79.
        ].
        recoveredBlock38Step = 79 ifTrue: [
            recoveredBlock38Result := recoveredBlock38Stack1.
            recoveredBlock38Done := true.
        ].
    ].
    recoveredBlock38Result
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := ReadWriteStream.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) storeOn: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204875fc; bytecode file offset 0xd83efc"
!AbtRunViewsApp class methodsFor: 'recovered'!
widgetCreationExtensionsForPackagedImage: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Set new'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := WidgetCreationExtensions.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 125].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) rulePolicy.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) packager.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubApplicationsInApplicationPrerequisiteChain.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := WidgetCreationExtensions.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := WidgetCreationExtensions.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Stack0 recoveredBlock38Stack1 recoveredBlock38Stack2 recoveredBlock38Stack3 recoveredBlock38Stack4 recoveredBlock38PC recoveredBlock38Step recoveredBlock38Done recoveredBlock38Result |
    recoveredBlock38Stack0 := self.
    recoveredBlock38PC := 44.
    recoveredBlock38Done := false.
    [recoveredBlock38Done not] whileTrue: [
        recoveredBlock38Step := recoveredBlock38PC.
        recoveredBlock38Step = 44 ifTrue: [
            recoveredBlock38Stack1 := nil.
            recoveredBlock38PC := 45.
        ].
        recoveredBlock38Step = 45 ifTrue: [
            recoveredBlock38Stack2 := AbtBasicView.
            recoveredBlock38PC := 47.
        ].
        recoveredBlock38Step = 47 ifTrue: [
            recoveredBlock38Stack3 := recoveredBlock38Arg1.
            recoveredBlock38PC := 48.
        ].
        recoveredBlock38Step = 48 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) applicationFor: (recoveredBlock38Stack3).
            recoveredBlock38PC := 50.
        ].
        recoveredBlock38Step = 50 ifTrue: [
            recoveredBlock38Stack3 := recoveredBlock38Stack2.
            recoveredBlock38PC := 51.
        ].
        recoveredBlock38Step = 51 ifTrue: [
            recoveredLocal3 := recoveredBlock38Stack3.
            recoveredBlock38PC := 54.
        ].
        recoveredBlock38Step = 54 ifTrue: [
            (recoveredBlock38Stack2 == nil) ifTrue: [recoveredBlock38PC := 70] ifFalse: [recoveredBlock38PC := 58].
        ].
        recoveredBlock38Step = 58 ifTrue: [
            recoveredBlock38Stack2 := recoveredLocal2.
            recoveredBlock38PC := 61.
        ].
        recoveredBlock38Step = 61 ifTrue: [
            recoveredBlock38Stack3 := recoveredLocal3.
            recoveredBlock38PC := 64.
        ].
        recoveredBlock38Step = 64 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) includes: (recoveredBlock38Stack3).
            recoveredBlock38PC := 66.
        ].
        recoveredBlock38Step = 66 ifTrue: [
            (recoveredBlock38Stack2) ifTrue: [recoveredBlock38PC := 79] ifFalse: [recoveredBlock38PC := 70].
        ].
        recoveredBlock38Step = 70 ifTrue: [
            recoveredBlock38PC := 71.
        ].
        recoveredBlock38Step = 71 ifTrue: [
            recoveredBlock38Stack1 := recoveredLocal4.
            recoveredBlock38PC := 74.
        ].
        recoveredBlock38Step = 74 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Arg1.
            recoveredBlock38PC := 75.
        ].
        recoveredBlock38Step = 75 ifTrue: [
            recoveredBlock38Stack3 := [].
            recoveredBlock38PC := 77.
        ].
        recoveredBlock38Step = 77 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) remove: (recoveredBlock38Stack2) ifAbsent: (recoveredBlock38Stack3).
            recoveredBlock38PC := 79.
        ].
        recoveredBlock38Step = 79 ifTrue: [
            recoveredBlock38Result := recoveredBlock38Stack1.
            recoveredBlock38Done := true.
        ].
    ].
    recoveredBlock38Result
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := ReadWriteStream.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) storeOn: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20569d24; bytecode file offset 0xe6668c"
!AbtRunViewsApp class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := 'defaultEditSize'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack4 := 'AbtBasicView'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) excludeClassInstanceVariable: (recoveredStack3) inClassNamed: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 'WidgetInitializationExtensions'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := (recoveredStack4) widgetInitializationExtensionsForPackagedImage: (recoveredStack5).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack2) initializeGlobalVariable: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 'WidgetCreationExtensions'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetCreationExtensionsForPackagedImage: (recoveredStack4).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) initializeGlobalVariable: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [:block28111580Arg1 | 
    | block28111580Value0 block28111580Value1 block28111580Value2 |
    block28111580Value0 := block28111580Arg1.
    block28111580Value1 := (block28111580Value0) reductionPolicy.
    block28111580Value2 := (block28111580Value1) isRuntimeReductionPolicy.
    block28111580Value2
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := [:block281115a4Arg1 | 
    | block281115a4Value0 block281115a4Value1 block281115a4Value2 block281115a4Value3 block281115a4Value4 block281115a4Value5 block281115a4Value6 block281115a4Value7 block281115a4Value8 block281115a4Value9 block281115a4Value10 block281115a4Value11 block281115a4Value12 block281115a4Value13 block281115a4Value14 block281115a4Value15 block281115a4Value16 block281115a4Value17 block281115a4Value18 block281115a4Value19 block281115a4Value20 |
    block281115a4Value0 := block281115a4Arg1.
    block281115a4Value1 := block281115a4Value0.
    (block281115a4Value1) ignoreNoImplementorErrorsForMessageSend: ('dragInteractionWidget:') inMethod: ('configureDragDropSpec') inClassNamed: ('AbtBasicView').
    block281115a4Value2 := block281115a4Value0.
    (block281115a4Value2) ignoreNoImplementorErrorsForMessageSend: ('dragInteractionView:') inMethod: ('configureDragDropSpec') inClassNamed: ('AbtBasicView').
    block281115a4Value3 := block281115a4Value0.
    (block281115a4Value3) ignoreNoImplementorErrorsForMessageSend: ('canBeDragTarget') inMethod: ('dragDropEnabled') inClassNamed: ('AbtBasicView').
    block281115a4Value4 := block281115a4Value0.
    (block281115a4Value4) ignoreNoImplementorErrorsForMessageSend: ('canBeDragSource') inMethod: ('dragDropEnabled') inClassNamed: ('AbtBasicView').
    block281115a4Value5 := block281115a4Value0.
    (block281115a4Value5) ignoreNoImplementorErrorsForMessageSend: ('rowColumnType:') inMethod: ('menu:') inClassNamed: ('AbtCompositeView').
    block281115a4Value6 := block281115a4Value0.
    (block281115a4Value6) ignoreNoImplementorErrorsForMessageSend: ('popUpAt:') inMethod: ('menuRequest:clientData:callData:') inClassNamed: ('AbtCompositeView').
    block281115a4Value7 := block281115a4Value0.
    (block281115a4Value7) ignoreNoImplementorErrorsForMessageSend: ('message:title:iconType:') inMethod: ('showErrorToUser') inClassNamed: ('AbtFormInputChecker').
    block281115a4Value8 := block281115a4Value0.
    (block281115a4Value8) ignoreNoImplementorErrorsForMessageSend: ('drawNormalInto:using:') inMethod: ('exposed:clientData:callData:') inClassNamed: ('AbtFormView').
    block281115a4Value9 := block281115a4Value0.
    (block281115a4Value9) ignoreNoImplementorErrorsForMessageSend: ('drawScaledInto:using:') inMethod: ('exposed:clientData:callData:') inClassNamed: ('AbtFormView').
    block281115a4Value10 := block281115a4Value0.
    (block281115a4Value10) ignoreNoImplementorErrorsForMessageSend: ('drawTiledInto:using:') inMethod: ('exposed:clientData:callData:') inClassNamed: ('AbtFormView').
    block281115a4Value11 := block281115a4Value0.
    (block281115a4Value11) ignoreNoImplementorErrorsForMessageSend: ('rowColumnType:') inMethod: ('menu:') inClassNamed: ('AbtFormView').
    block281115a4Value12 := block281115a4Value0.
    (block281115a4Value12) ignoreNoImplementorErrorsForMessageSend: ('pixmap') inMethod: ('updateGraphic:') inClassNamed: ('AbtLabelView').
    block281115a4Value13 := block281115a4Value0.
    (block281115a4Value13) ignoreNoImplementorErrorsForMessageSend: ('isIconDescriptor') inMethod: ('calcGraphicLabelType') inClassNamed: ('AbtLabelView').
    block281115a4Value14 := block281115a4Value0.
    (block281115a4Value14) ignoreNoImplementorErrorsForMessageSend: ('popUpAt:') inMethod: ('menuRequest:clientData:callData:') inClassNamed: ('AbtListView').
    block281115a4Value15 := block281115a4Value0.
    (block281115a4Value15) ignoreNoImplementorErrorsForMessageSend: ('rowColumnType:') inMethod: ('menu:') inClassNamed: ('AbtListView').
    block281115a4Value16 := block281115a4Value0.
    (block281115a4Value16) ignoreNoImplementorErrorsForMessageSend: ('rowColumnType:') inMethod: ('menu:') inClassNamed: ('AbtShellView').
    block281115a4Value17 := block281115a4Value0.
    (block281115a4Value17) ignoreNoImplementorErrorsForMessageSend: ('pixmap') inMethod: ('updateGraphic:') inClassNamed: ('AbtShellView').
    block281115a4Value18 := block281115a4Value0.
    (block281115a4Value18) ignoreNoImplementorErrorsForMessageSend: ('isIconDescriptor') inMethod: ('updateGraphic:') inClassNamed: ('AbtShellView').
    block281115a4Value19 := block281115a4Value0.
    (block281115a4Value19) ignoreNoImplementorErrorsForMessageSend: ('tickSize') inMethod: ('primWidgetDisplayTicks:onScale:') inClassNamed: ('AbtSliderView').
    block281115a4Value20 := (block281115a4Value0) ignoreNoImplementorErrorsForMessageSend: ('tickSize') inMethod: ('primWidgetRemoveTicks:fromScale:') inClassNamed: ('AbtSliderView').
    block281115a4Value20
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack4 := [:block281115c8Arg1 | 
    nil
].
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            (recoveredStack1) condition: (recoveredStack2) ifTrue: (recoveredStack3) ifFalse: (recoveredStack4).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

