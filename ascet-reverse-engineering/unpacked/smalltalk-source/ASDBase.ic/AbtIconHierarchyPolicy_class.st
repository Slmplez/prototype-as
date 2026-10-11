"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20014838; bytecode file offset 0x912098"
!AbtIconHierarchyPolicy class methodsFor: 'recovered'!
widgetHierarchyPolicyClass
    | recoveredValue0 |
    recoveredValue0 := EwIconHierarchyPolicy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20019cc4; bytecode file offset 0x92209c"
!AbtIconHierarchyPolicy class methodsFor: 'recovered'!
IS_height
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('height'); setSelector: ('height:'); changeSymbol: ('heightChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001cb98; bytecode file offset 0x92209c"
!AbtIconHierarchyPolicy class methodsFor: 'recovered'!
IS_collapsingDownIconDescriptor
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtIconDescriptor); getSelector: ('collapsingDownIconDescriptor'); setSelector: ('collapsingDownIconDescriptor:'); changeSymbol: ('collapsingDownIconDescriptorChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001d0c0; bytecode file offset 0x92209c"
!AbtIconHierarchyPolicy class methodsFor: 'recovered'!
IS_expandingDownIconDescriptor
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtIconDescriptor); getSelector: ('expandingDownIconDescriptor'); setSelector: ('expandingDownIconDescriptor:'); changeSymbol: ('expandingDownIconDescriptorChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001ddc8; bytecode file offset 0x92209c"
!AbtIconHierarchyPolicy class methodsFor: 'recovered'!
IS_collapsingUpIconDescriptor
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtIconDescriptor); getSelector: ('collapsingUpIconDescriptor'); setSelector: ('collapsingUpIconDescriptor:'); changeSymbol: ('collapsingUpIconDescriptorChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20020be8; bytecode file offset 0x92209c"
!AbtIconHierarchyPolicy class methodsFor: 'recovered'!
IS_iconTypes
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('iconTypes'); setSelector: ('iconTypes:'); changeSymbol: ('iconTypesChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022460; bytecode file offset 0x92209c"
!AbtIconHierarchyPolicy class methodsFor: 'recovered'!
IS_collapsedIconDescriptor
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtIconDescriptor); getSelector: ('collapsedIconDescriptor'); setSelector: ('collapsedIconDescriptor:'); changeSymbol: ('collapsedIconDescriptorChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022664; bytecode file offset 0x92209c"
!AbtIconHierarchyPolicy class methodsFor: 'recovered'!
IS_width
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('width'); setSelector: ('width:'); changeSymbol: ('widthChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022a18; bytecode file offset 0x92209c"
!AbtIconHierarchyPolicy class methodsFor: 'recovered'!
IS_expandedIconDescriptor
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtIconDescriptor); getSelector: ('expandedIconDescriptor'); setSelector: ('expandedIconDescriptor:'); changeSymbol: ('expandedIconDescriptorChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002315c; bytecode file offset 0x92209c"
!AbtIconHierarchyPolicy class methodsFor: 'recovered'!
IS_expandingUpIconDescriptor
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtIconDescriptor); getSelector: ('expandingUpIconDescriptor'); setSelector: ('expandingUpIconDescriptor:'); changeSymbol: ('expandingUpIconDescriptorChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20023b40; bytecode file offset 0x92209c"
!AbtIconHierarchyPolicy class methodsFor: 'recovered'!
IS_childlessIconDescriptor
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtIconDescriptor); getSelector: ('childlessIconDescriptor'); setSelector: ('childlessIconDescriptor:'); changeSymbol: ('childlessIconDescriptorChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20048bf4; bytecode file offset 0x945728"
!AbtIconHierarchyPolicy class methodsFor: 'recovered'!
resetTriangleIcons
    TriangleIcons := nil.
    ^self
! !

"ASDBase.ic method 0x20048cb4; bytecode file offset 0x945728"
!AbtIconHierarchyPolicy class methodsFor: 'recovered'!
resetButtonIcons
    ButtonIcons := nil.
    ^self
! !

"ASDBase.ic method 0x2009e070; bytecode file offset 0x99a97c"
!AbtIconHierarchyPolicy class methodsFor: 'recovered'!
startUp
    TriangleIcons := nil.
    ButtonIcons := nil.
    ^self
! !

"ASDBase.ic method 0x2011debc; bytecode file offset 0xa1a784"
!AbtIconHierarchyPolicy class methodsFor: 'recovered'!
findFilePath: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := CgScreen.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := CgScreen.
    recoveredValue3 := (recoveredValue2) bitmapPath.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [].
    recoveredValue6 := (recoveredValue1) searchPath: (recoveredValue3) fileName: (recoveredValue4) ifNone: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20313744; bytecode file offset 0xc10010"
!AbtIconHierarchyPolicy class methodsFor: 'recovered'!
exiting
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := TriangleIcons.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := TriangleIcons.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280eaf0cArg1 | 
    | block280eaf0cStack0 block280eaf0cStack1 block280eaf0cStack2 block280eaf0cStack3 block280eaf0cPC block280eaf0cStep block280eaf0cDone block280eaf0cResult |
    block280eaf0cStack0 := self.
    block280eaf0cPC := 4.
    block280eaf0cDone := false.
    [block280eaf0cDone not] whileTrue: [
        block280eaf0cStep := block280eaf0cPC.
        block280eaf0cStep = 4 ifTrue: [
            block280eaf0cStack1 := nil.
            block280eaf0cPC := 5.
        ].
        block280eaf0cStep = 5 ifTrue: [
            block280eaf0cStack2 := block280eaf0cArg1.
            block280eaf0cPC := 6.
        ].
        block280eaf0cStep = 6 ifTrue: [
            (block280eaf0cStack2 == nil) ifTrue: [block280eaf0cPC := 13] ifFalse: [block280eaf0cPC := 10].
        ].
        block280eaf0cStep = 10 ifTrue: [
            block280eaf0cPC := 11.
        ].
        block280eaf0cStep = 11 ifTrue: [
            block280eaf0cStack1 := block280eaf0cArg1.
            block280eaf0cPC := 12.
        ].
        block280eaf0cStep = 12 ifTrue: [
            block280eaf0cStack1 := (block280eaf0cStack1) freeIcon.
            block280eaf0cPC := 13.
        ].
        block280eaf0cStep = 13 ifTrue: [
            block280eaf0cResult := block280eaf0cStack1.
            block280eaf0cDone := true.
        ].
    ].
    block280eaf0cResult
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
            recoveredStack1 := ButtonIcons.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := ButtonIcons.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := [:block280eaf30Arg1 | 
    | block280eaf30Stack0 block280eaf30Stack1 block280eaf30Stack2 block280eaf30Stack3 block280eaf30PC block280eaf30Step block280eaf30Done block280eaf30Result |
    block280eaf30Stack0 := self.
    block280eaf30PC := 4.
    block280eaf30Done := false.
    [block280eaf30Done not] whileTrue: [
        block280eaf30Step := block280eaf30PC.
        block280eaf30Step = 4 ifTrue: [
            block280eaf30Stack1 := nil.
            block280eaf30PC := 5.
        ].
        block280eaf30Step = 5 ifTrue: [
            block280eaf30Stack2 := block280eaf30Arg1.
            block280eaf30PC := 6.
        ].
        block280eaf30Step = 6 ifTrue: [
            (block280eaf30Stack2 == nil) ifTrue: [block280eaf30PC := 13] ifFalse: [block280eaf30PC := 10].
        ].
        block280eaf30Step = 10 ifTrue: [
            block280eaf30PC := 11.
        ].
        block280eaf30Step = 11 ifTrue: [
            block280eaf30Stack1 := block280eaf30Arg1.
            block280eaf30PC := 12.
        ].
        block280eaf30Step = 12 ifTrue: [
            block280eaf30Stack1 := (block280eaf30Stack1) freeIcon.
            block280eaf30PC := 13.
        ].
        block280eaf30Step = 13 ifTrue: [
            block280eaf30Result := block280eaf30Stack1.
            block280eaf30Done := true.
        ].
    ].
    block280eaf30Result
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20348010; bytecode file offset 0xc448e8"
!AbtIconHierarchyPolicy class methodsFor: 'recovered'!
buttonIcons
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ButtonIcons.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'buttonsi.bmp'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) findFilePath: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'buttonsm.bmp'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) findFilePath: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := AbtIconArray.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := 4.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromFile: (recoveredStack2) maskFile: (recoveredStack3) count: (recoveredStack4).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ButtonIcons := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := ButtonIcons.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2034807c; bytecode file offset 0xc44954"
!AbtIconHierarchyPolicy class methodsFor: 'recovered'!
triangleIcons
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := TriangleIcons.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'triangli.bmp'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) findFilePath: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'trianglm.bmp'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) findFilePath: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := AbtIconArray.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := 5.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromFile: (recoveredStack2) maskFile: (recoveredStack3) count: (recoveredStack4).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            TriangleIcons := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := TriangleIcons.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203d4b6c; bytecode file offset 0xcd1544"
!AbtIconHierarchyPolicy class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_iconTypes.
    (recoveredValue2) featureNamed: ('iconTypes') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_width.
    (recoveredValue4) featureNamed: ('width') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_height.
    (recoveredValue6) featureNamed: ('height') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_childlessIconDescriptor.
    (recoveredValue8) featureNamed: ('childlessIconDescriptor') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_expandedIconDescriptor.
    (recoveredValue10) featureNamed: ('expandedIconDescriptor') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_expandingUpIconDescriptor.
    (recoveredValue12) featureNamed: ('expandingUpIconDescriptor') put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) IS_expandingDownIconDescriptor.
    (recoveredValue14) featureNamed: ('expandingDownIconDescriptor') put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := (self) IS_collapsedIconDescriptor.
    (recoveredValue16) featureNamed: ('collapsedIconDescriptor') put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := (self) IS_collapsingUpIconDescriptor.
    (recoveredValue18) featureNamed: ('collapsingUpIconDescriptor') put: (recoveredValue19).
    recoveredValue20 := (self) IS_collapsingDownIconDescriptor.
    recoveredValue21 := (recoveredValue1) featureNamed: ('collapsingDownIconDescriptor') put: (recoveredValue20).
    ^recoveredValue21
! !

