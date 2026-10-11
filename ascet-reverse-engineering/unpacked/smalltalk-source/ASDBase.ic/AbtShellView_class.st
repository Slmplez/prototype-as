"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001245c; bytecode file offset 0x912098"
!AbtShellView class methodsFor: 'recovered'!
cwModalWidgetClass
    | recoveredValue0 |
    recoveredValue0 := CwDialogShell.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200126cc; bytecode file offset 0x912098"
!AbtShellView class methodsFor: 'recovered'!
abtMainWindowWidgetClass
    | recoveredValue0 |
    recoveredValue0 := OleMainWindow.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20013c20; bytecode file offset 0x912098"
!AbtShellView class methodsFor: 'recovered'!
cwMainWindowWidgetClass
    | recoveredValue0 |
    recoveredValue0 := CwMainWindow.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20013e48; bytecode file offset 0x912098"
!AbtShellView class methodsFor: 'recovered'!
replaceableActions
    | recoveredValue0 |
    recoveredValue0 := ReplaceableActions.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200145c8; bytecode file offset 0x912098"
!AbtShellView class methodsFor: 'recovered'!
cwOwnedWidgetClass
    | recoveredValue0 |
    recoveredValue0 := CwDialogShell.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014c88; bytecode file offset 0x912098"
!AbtShellView class methodsFor: 'recovered'!
cwWidgetClass
    | recoveredValue0 |
    recoveredValue0 := CwTopLevelShell.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20015ad0; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_dialogBorder
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('borderDialog'); setSelector: ('borderDialog:'); changeSymbol: ('borderDialogChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20015c5c; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_resurfaced
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('resurfaced'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016988; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_systemMenu
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('systemMenu'); setSelector: ('systemMenu:'); changeSymbol: ('systemMenuChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200171a4; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_deIconify
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('deIconify'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20017594; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_oleWidgets
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (OrderedCollection); getSelector: ('oleWidgets'); setSelector: (nil); changeSymbol: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20017af8; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_autoUnmanage
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('autoUnmanage'); setSelector: ('autoUnmanage:'); changeSymbol: ('autoUnmanageChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20017e88; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_icon
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtGraphicsDescriptor); getSelector: ('graphicsDescriptor'); setSelector: ('graphicsDescriptor:'); changeSymbol: ('graphicsDescriptorChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20018890; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_openWidget
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('openWidget'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20018a10; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_olePromptEditLinks
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('olePromptEditLinks'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20018b9c; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_minimizeButton
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('minimizeButton'); setSelector: ('minimizeButton:'); changeSymbol: ('minimizeButtonChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20018cec; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_openFullApplicationModalWidget
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('openFullApplicationModalWidget'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200191f0; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_losingFocus
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('losingFocus'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200199b8; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_inputType
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('inputType'); setSelector: ('inputType:'); changeSymbol: ('inputTypeChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a4c8; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
packagerIncludeSelectors
    ^#('closeWidgetRequest' 'gettingFocus' 'losingFocus')
! !

"ASDBase.ic method 0x2001a54c; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_maximizeButton
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('maximizeButton'); setSelector: ('maximizeButton:'); changeSymbol: ('maximizeButtonChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a5e8; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_allowShellResize
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('allowShellResize'); setSelector: ('allowShellResize:'); changeSymbol: ('allowShellResizeChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001aa20; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_titleBar
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('titleBar'); setSelector: ('titleBar:'); changeSymbol: ('titleBarChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001b458; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_oleContainerMenuView
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtCascadeButtonView); getSelector: ('oleContainerMenuView'); setSelector: ('oleContainerMenuView:'); changeSymbol: ('oleContainerMenuView'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001b884; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_iconify
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('iconify'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001ba70; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_resetCursor
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('resetCursor'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001c13c; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_tabGroup
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('tabGroup'); setSelector: ('tabGroup:'); changeSymbol: ('tabGroupChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001c424; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_oleFileMenuView
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtCascadeButtonView); getSelector: ('oleFileMenuView'); setSelector: ('oleFileMenuView:'); changeSymbol: ('oleFileMenuView'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001c850; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_traversalOn
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('traversalOn'); setSelector: ('traversalOn:'); changeSymbol: ('traversalOnChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001dec4; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_title
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (EsString); getSelector: ('title'); setSelector: ('title:'); changeSymbol: ('titleChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001e8a8; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_iconic
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('iconic'); setSelector: ('iconic:'); changeSymbol: ('iconicChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001eb0c; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_resized
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('configuredWidget'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001ed94; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_inputMethodEditor
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('inputMethodEditor'); setSelector: ('inputMethodEditor:'); changeSymbol: ('inputMethodEditorChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001f070; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_closeWidgetRequest
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('closeWidgetRequest'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('CwConfirmationCallbackData'); parameterName: ('confirmStruct'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20020ba0; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_hoverHelpDescriptor
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtHoverHelpDescriptor); getSelector: ('hoverHelpDescriptor'); setSelector: ('hoverHelpDescriptor:'); changeSymbol: ('hoverHelpDescriptorChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20021230; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_closeWidget
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('closeWidgetCommand'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200217dc; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_gettingFocus
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('gettingFocus'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200221d8; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_openSystemModalWidget
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('openSystemModalWidget'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022454; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_shellDecorations
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('shellDecorations'); setSelector: ('shellDecorations:'); changeSymbol: ('#shellDecorationsChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022e80; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_sizeBorder
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('sizeBorder'); setSelector: ('sizeBorder:'); changeSymbol: ('sizeBorderChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200232a0; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_suspendExecutionUntilRemoved
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('suspendExecutionUntilRemoved'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20023594; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_oleHostName
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('oleHostName'); setSelector: ('oleHostName:'); changeSymbol: ('oleHostNameChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20023894; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_initWidgetSize
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Rectangle); getSelector: ('initWidgetSize'); setSelector: ('initWidgetSize:'); changeSymbol: ('initWidgetSizeChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024794; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_romanInput
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('romanInput'); setSelector: ('romanInput:'); changeSymbol: ('romanInputChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024fe0; bytecode file offset 0x92209c"
!AbtShellView class methodsFor: 'recovered'!
IS_showBusyCursor
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('showBusyCursor'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20026338; bytecode file offset 0x923928"
!AbtShellView class methodsFor: 'recovered'!
IS_oleWindowMenuView
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtCascadeButtonView); getSelector: ('oleWindowMenuView'); setSelector: ('oleWindowMenuView:'); changeSymbol: ('oleWindowMenuView'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200266f8; bytecode file offset 0x923928"
!AbtShellView class methodsFor: 'recovered'!
IS_openOwnedWidget
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('openOwnedWidget'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20026d1c; bytecode file offset 0x923928"
!AbtShellView class methodsFor: 'recovered'!
IS_openApplicationModalWidget
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('openApplicationModalWidget'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20054308; bytecode file offset 0x951190"
!AbtShellView class methodsFor: 'recovered'!
replaceableActions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ReplaceableActions := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2013f654; bytecode file offset 0xa3bf14"
!AbtShellView class methodsFor: 'recovered'!
initializeReplaceableActionsIfEmpty
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) replaceableActions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) replaceableActions.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) initializeReplaceableActions.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c8bc4; bytecode file offset 0xbc549c"
!AbtShellView class methodsFor: 'recovered'!
allAbtShellViews
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := CwShell.
    recoveredValue3 := (recoveredValue2) allShells.
    recoveredValue4 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
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
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) userData.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Stack3 := AbtShellView.
            recoveredBlock13PC := 26.
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) isKindOf: (recoveredBlock13Stack3).
            recoveredBlock13PC := 28.
        ].
        recoveredBlock13Step = 28 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 32] ifFalse: [recoveredBlock13PC := 41].
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 33 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 36.
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 37.
        ].
        recoveredBlock13Step = 37 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) userData.
            recoveredBlock13PC := 39.
        ].
        recoveredBlock13Step = 39 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) add: (recoveredBlock13Stack2).
            recoveredBlock13PC := 41.
        ].
        recoveredBlock13Step = 41 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x202eb0b4; bytecode file offset 0xbe799c"
!AbtShellView class methodsFor: 'recovered'!
OLE_instanceInterfaceSpec: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) IS_olePromptEditLinks.
    (recoveredValue1) featureNamed: ('olePromptEditLinks') put: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := (self) IS_oleHostName.
    (recoveredValue3) featureNamed: ('oleHostName') put: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := (self) IS_oleWidgets.
    (recoveredValue5) featureNamed: ('oleWidgets') put: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := (self) IS_oleContainerMenuView.
    (recoveredValue7) featureNamed: ('oleContainerMenuView') put: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    recoveredValue10 := (self) IS_oleFileMenuView.
    (recoveredValue9) featureNamed: ('oleFileMenuView') put: (recoveredValue10).
    recoveredValue11 := (self) IS_oleWindowMenuView.
    recoveredValue12 := (recoveredValue0) featureNamed: ('oleWindowMenuView') put: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x2030b2d8; bytecode file offset 0xc07bbc"
!AbtShellView class methodsFor: 'recovered'!
initializeReplaceableActions
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := DirectedMessage.
    recoveredValue4 := (recoveredValue3) selector: ('mdiNotSupported') arguments: (#()) receiver: (nil).
    (recoveredValue2) at: ('shellParentViewNilCreate') put: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := DirectedMessage.
    recoveredValue7 := (recoveredValue6) selector: ('mdiNotSupported') arguments: (#()) receiver: (nil).
    (recoveredValue5) at: ('shellParentViewNilPostCreationArgBlock') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := DirectedMessage.
    recoveredValue10 := (recoveredValue9) selector: ('abtRunOwnerWidget') arguments: (#()) receiver: (nil).
    (recoveredValue8) at: ('ownerWidget') put: (recoveredValue10).
    (self) replaceableActions: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x205b66b8; bytecode file offset 0xeb31bc"
!AbtShellView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_resurfaced.
    (recoveredValue2) featureNamed: ('resurfaced') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_resized.
    (recoveredValue4) featureNamed: ('resized') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_icon.
    (recoveredValue6) featureNamed: ('icon') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_initWidgetSize.
    (recoveredValue8) featureNamed: ('initWidgetSize') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_title.
    (recoveredValue10) featureNamed: ('title') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_allowShellResize.
    (recoveredValue12) featureNamed: ('allowShellResize') put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) IS_iconic.
    (recoveredValue14) featureNamed: ('iconic') put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := (self) IS_dialogBorder.
    (recoveredValue16) featureNamed: ('dialogBorder') put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := (self) IS_sizeBorder.
    (recoveredValue18) featureNamed: ('sizeBorder') put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := (self) IS_minimizeButton.
    (recoveredValue20) featureNamed: ('minimizeButton') put: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := (self) IS_maximizeButton.
    (recoveredValue22) featureNamed: ('maximizeButton') put: (recoveredValue23).
    recoveredValue24 := recoveredValue1.
    recoveredValue25 := (self) IS_systemMenu.
    (recoveredValue24) featureNamed: ('systemMenu') put: (recoveredValue25).
    recoveredValue26 := recoveredValue1.
    recoveredValue27 := (self) IS_titleBar.
    (recoveredValue26) featureNamed: ('titleBar') put: (recoveredValue27).
    recoveredValue28 := recoveredValue1.
    recoveredValue29 := (self) IS_autoUnmanage.
    (recoveredValue28) featureNamed: ('autoUnmanage') put: (recoveredValue29).
    recoveredValue30 := recoveredValue1.
    recoveredValue31 := (self) IS_gettingFocus.
    (recoveredValue30) featureNamed: ('gettingFocus') put: (recoveredValue31).
    recoveredValue32 := recoveredValue1.
    recoveredValue33 := (self) IS_losingFocus.
    (recoveredValue32) featureNamed: ('losingFocus') put: (recoveredValue33).
    recoveredValue34 := recoveredValue1.
    recoveredValue35 := (self) IS_closeWidgetRequest.
    (recoveredValue34) featureNamed: ('closeWidgetRequest') put: (recoveredValue35).
    recoveredValue36 := recoveredValue1.
    recoveredValue37 := (self) IS_openWidget.
    (recoveredValue36) featureNamed: ('openWidget') put: (recoveredValue37).
    recoveredValue38 := recoveredValue1.
    recoveredValue39 := (self) IS_closeWidget.
    (recoveredValue38) featureNamed: ('closeWidget') put: (recoveredValue39).
    recoveredValue40 := recoveredValue1.
    recoveredValue41 := (self) IS_openSystemModalWidget.
    (recoveredValue40) featureNamed: ('openSystemModalWidget') put: (recoveredValue41).
    recoveredValue42 := recoveredValue1.
    recoveredValue43 := (self) IS_openApplicationModalWidget.
    (recoveredValue42) featureNamed: ('openApplicationModalWidget') put: (recoveredValue43).
    recoveredValue44 := recoveredValue1.
    recoveredValue45 := (self) IS_openFullApplicationModalWidget.
    (recoveredValue44) featureNamed: ('openFullApplicationModalWidget') put: (recoveredValue45).
    recoveredValue46 := recoveredValue1.
    recoveredValue47 := (self) IS_openOwnedWidget.
    (recoveredValue46) featureNamed: ('openOwnedWidget') put: (recoveredValue47).
    recoveredValue48 := recoveredValue1.
    recoveredValue49 := (self) IS_suspendExecutionUntilRemoved.
    (recoveredValue48) featureNamed: ('suspendExecutionUntilRemoved') put: (recoveredValue49).
    recoveredValue50 := recoveredValue1.
    recoveredValue51 := (self) IS_iconify.
    (recoveredValue50) featureNamed: ('iconify') put: (recoveredValue51).
    recoveredValue52 := recoveredValue1.
    recoveredValue53 := (self) IS_deIconify.
    (recoveredValue52) featureNamed: ('deIconify') put: (recoveredValue53).
    recoveredValue54 := recoveredValue1.
    recoveredValue55 := (self) IS_showBusyCursor.
    (recoveredValue54) featureNamed: ('showBusyCursor') put: (recoveredValue55).
    recoveredValue56 := recoveredValue1.
    recoveredValue57 := (self) IS_resetCursor.
    (recoveredValue56) featureNamed: ('resetCursor') put: (recoveredValue57).
    recoveredValue58 := recoveredValue1.
    recoveredValue59 := (self) IS_hoverHelpDescriptor.
    (recoveredValue58) featureNamed: ('hoverHelpDescriptor') put: (recoveredValue59).
    recoveredValue60 := recoveredValue1.
    recoveredValue61 := (self) IS_shellDecorations.
    (recoveredValue60) featureNamed: ('shellDecorations') put: (recoveredValue61).
    recoveredValue62 := recoveredValue1.
    recoveredValue63 := (self) IS_traversalOn.
    (recoveredValue62) featureNamed: ('traversalOn') put: (recoveredValue63).
    recoveredValue64 := recoveredValue1.
    recoveredValue65 := (self) IS_tabGroup.
    (recoveredValue64) featureNamed: ('tabGroup') put: (recoveredValue65).
    recoveredValue66 := recoveredValue1.
    recoveredValue67 := (self) IS_inputMethodEditor.
    (recoveredValue66) featureNamed: ('inputMethodEditor') put: (recoveredValue67).
    recoveredValue68 := recoveredValue1.
    recoveredValue69 := (self) IS_inputType.
    (recoveredValue68) featureNamed: ('inputType') put: (recoveredValue69).
    recoveredValue70 := (self) IS_romanInput.
    recoveredValue71 := (recoveredValue1) featureNamed: ('romanInput') put: (recoveredValue70).
    ^recoveredValue71
! !

