"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200021e0; bytecode file offset 0x8ffcfc"
!AbtObjectGraphicsApp class methodsFor: 'recovered'!
_PRAGMA_AbtGOLayerConstants
    ^self
! !

"ASDBase.ic method 0x20457a54; bytecode file offset 0xd54368"
!AbtObjectGraphicsApp class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280ffcf4Arg1 | 
    | block280ffcf4Value0 block280ffcf4Value1 block280ffcf4Value2 |
    block280ffcf4Value0 := block280ffcf4Arg1.
    block280ffcf4Value1 := (block280ffcf4Value0) reductionPolicy.
    block280ffcf4Value2 := (block280ffcf4Value1) isRuntimeReductionPolicy.
    block280ffcf4Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := [:block280ffd18Arg1 | 
    | block280ffd18Value0 block280ffd18Value1 block280ffd18Value2 block280ffd18Value3 block280ffd18Value4 block280ffd18Value5 block280ffd18Value6 block280ffd18Value7 block280ffd18Value8 block280ffd18Value9 |
    block280ffd18Value0 := block280ffd18Arg1.
    block280ffd18Value1 := block280ffd18Value0.
    (block280ffd18Value1) ignoreNoImplementorErrorsForMessageSend: ('processButtonPressEvent:') inMethod: ('dispatchButtonPressEvent:') inClassNamed: ('AbtObjectGraphicsWidget').
    block280ffd18Value2 := block280ffd18Value0.
    (block280ffd18Value2) ignoreNoImplementorErrorsForMessageSend: ('processButtonReleaseEvent:') inMethod: ('dispatchButtonReleaseEvent:') inClassNamed: ('AbtObjectGraphicsWidget').
    block280ffd18Value3 := block280ffd18Value0.
    (block280ffd18Value3) ignoreNoImplementorErrorsForMessageSend: ('processKeyDownEvent:') inMethod: ('dispatchKeyDownEvent:') inClassNamed: ('AbtObjectGraphicsWidget').
    block280ffd18Value4 := block280ffd18Value0.
    (block280ffd18Value4) ignoreNoImplementorErrorsForMessageSend: ('processKeyUpEvent:') inMethod: ('dispatchKeyUpEvent:') inClassNamed: ('AbtObjectGraphicsWidget').
    block280ffd18Value5 := block280ffd18Value0.
    (block280ffd18Value5) ignoreNoImplementorErrorsForMessageSend: ('processPointerMotionEvent:') inMethod: ('dispatchPointerMotionEvent:') inClassNamed: ('AbtObjectGraphicsWidget').
    block280ffd18Value6 := block280ffd18Value0.
    (block280ffd18Value6) ignoreNoImplementorErrorsForMessageSend: ('drawOn:gc:') inMethod: ('primitiveDrawBackground') inClassNamed: ('AbtObjectGraphicsWidget').
    block280ffd18Value7 := block280ffd18Value0.
    (block280ffd18Value7) ignoreNoImplementorErrorsForMessageSend: ('drawOn:gc:') inMethod: ('primitiveDrawForeground') inClassNamed: ('AbtObjectGraphicsWidget').
    block280ffd18Value8 := block280ffd18Value0.
    (block280ffd18Value8) ignoreNoImplementorErrorsForMessageSend: ('refresh:drawable:gc:') inMethod: ('primitiveRefreshBackground:') inClassNamed: ('AbtObjectGraphicsWidget').
    block280ffd18Value9 := (block280ffd18Value0) ignoreNoImplementorErrorsForMessageSend: ('refresh:drawable:gc:') inMethod: ('primitiveRefreshForeground:') inClassNamed: ('AbtObjectGraphicsWidget').
    block280ffd18Value9
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack4 := [:block280ffd3cArg1 | 
    nil
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) condition: (recoveredStack2) ifTrue: (recoveredStack3) ifFalse: (recoveredStack4).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

