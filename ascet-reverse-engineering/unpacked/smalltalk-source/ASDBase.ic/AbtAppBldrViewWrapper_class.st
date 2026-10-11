"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016664; bytecode file offset 0x92209c"
!AbtAppBldrViewWrapper class methodsFor: 'recovered'!
IS_destroyOnClose
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('destroyOnClose'); setSelector: ('destroyOnClose:'); changeSymbol: ('destroyOnCloseChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001754c; bytecode file offset 0x92209c"
!AbtAppBldrViewWrapper class methodsFor: 'recovered'!
IS_destroyView
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('destroyView'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200176e4; bytecode file offset 0x92209c"
!AbtAppBldrViewWrapper class methodsFor: 'recovered'!
IS_createView
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('createView'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001aac8; bytecode file offset 0x92209c"
!AbtAppBldrViewWrapper class methodsFor: 'recovered'!
IS_destroyedView
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('destroyedView'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20020d08; bytecode file offset 0x92209c"
!AbtAppBldrViewWrapper class methodsFor: 'recovered'!
IS_viewPartClass
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Class); getSelector: ('viewPartClass'); setSelector: ('viewPartClass:'); changeSymbol: ('viewPartClassChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20020dec; bytecode file offset 0x92209c"
!AbtAppBldrViewWrapper class methodsFor: 'recovered'!
IS_backgroundCreateView
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('backgroundCreateView'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200e5c10; bytecode file offset 0x9e24d4"
!AbtAppBldrViewWrapper class methodsFor: 'recovered'!
selfReferenceAttributeSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super selfReferenceAttributeSpec.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := AbtAppBldrView.
    (recoveredValue1) attributeClass: (recoveredValue2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2013a188; bytecode file offset 0xa36a64"
!AbtAppBldrViewWrapper class methodsFor: 'recovered'!
creatingViewSelectors
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CreatingViewSelectors.
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
            recoveredStack1 := (recoveredStack1) initializeCreatingViewSelectors.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := CreatingViewSelectors.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202b2ad0; bytecode file offset 0xbaf3a8"
!AbtAppBldrViewWrapper class methodsFor: 'recovered'!
initializeCreatingViewSelectors
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    CreatingViewSelectors := recoveredValue2.
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) at: ('openWidget') put: ('openWidget').
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) at: ('openSystemModalWidget') put: ('openSystemModalWidget').
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) at: ('openApplicationModalWidget') put: ('openApplicationModalWidget').
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) at: ('openFullApplicationModalWidget') put: ('openFullApplicationModalWidget').
    (recoveredValue1) at: ('openOwnedWidget') put: ('openOwnedWidget').
    recoveredValue7 := CreatingViewSelectors.
    ^recoveredValue7
! !

"ASDBase.ic method 0x202fb7f8; bytecode file offset 0xbf8170"
!AbtAppBldrViewWrapper class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_viewPartClass.
    (recoveredValue2) featureNamed: ('viewPartClass') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_destroyOnClose.
    (recoveredValue4) featureNamed: ('destroyOnClose') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_createView.
    (recoveredValue6) featureNamed: ('createView') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_backgroundCreateView.
    (recoveredValue8) featureNamed: ('backgroundCreateView') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_destroyView.
    (recoveredValue10) featureNamed: ('destroyView') put: (recoveredValue11).
    recoveredValue12 := (self) IS_destroyedView.
    recoveredValue13 := (recoveredValue1) featureNamed: ('destroyedView') put: (recoveredValue12).
    ^recoveredValue13
! !

