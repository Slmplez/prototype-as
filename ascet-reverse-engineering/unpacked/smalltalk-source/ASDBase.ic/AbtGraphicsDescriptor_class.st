"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001dea0; bytecode file offset 0x92209c"
!AbtGraphicsDescriptor class methodsFor: 'recovered'!
IS_id
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: ('Integer'); getSelector: ('id'); setSelector: ('id:'); changeSymbol: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001f1b4; bytecode file offset 0x92209c"
!AbtGraphicsDescriptor class methodsFor: 'recovered'!
IS_shading
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: ('Integer'); getSelector: ('shading'); setSelector: ('shading:'); changeSymbol: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20020024; bytecode file offset 0x92209c"
!AbtGraphicsDescriptor class methodsFor: 'recovered'!
IS_moduleName
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: ('String'); getSelector: ('moduleName'); setSelector: ('moduleName:'); changeSymbol: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20056220; bytecode file offset 0x952c58"
!AbtGraphicsDescriptor class methodsFor: 'recovered'!
freePixmap: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) freePixmap.
    ^self
! !

"ASDBase.ic method 0x200efce0; bytecode file offset 0x9ec5ac"
!AbtGraphicsDescriptor class methodsFor: 'recovered'!
exiting
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AbtGraphicsDescriptor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) freePixmaps.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200efcf0; bytecode file offset 0x9ec5ac"
!AbtGraphicsDescriptor class methodsFor: 'recovered'!
startUp
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AbtGraphicsDescriptor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) reinitializePixmaps.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20139fa0; bytecode file offset 0xa3686c"
!AbtGraphicsDescriptor class methodsFor: 'recovered'!
reinitializePixmaps
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Pixmaps.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Pixmaps.
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
            Pixmaps := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016e804; bytecode file offset 0xa6b0f8"
!AbtGraphicsDescriptor class methodsFor: 'recovered'!
pixmaps
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Pixmaps.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
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
            recoveredStack3 := 'freePixmap:'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner: (recoveredStack2) finalizeSelector: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            Pixmaps := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := Pixmaps.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201f03dc; bytecode file offset 0xaecd38"
!AbtGraphicsDescriptor class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_moduleName.
    (recoveredValue2) featureNamed: ('moduleName') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_id.
    (recoveredValue4) featureNamed: ('id') put: (recoveredValue5).
    recoveredValue6 := (self) IS_shading.
    recoveredValue7 := (recoveredValue1) featureNamed: ('shading') put: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20223dac; bytecode file offset 0xb20678"
!AbtGraphicsDescriptor class methodsFor: 'recovered'!
freePixmaps
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Pixmaps.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Pixmaps.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:block280dbe28Arg1 | 
    | block280dbe28Stack0 block280dbe28Stack1 block280dbe28Stack2 block280dbe28Stack3 block280dbe28PC block280dbe28Step block280dbe28Done block280dbe28Result |
    block280dbe28Stack0 := self.
    block280dbe28PC := 4.
    block280dbe28Done := false.
    [block280dbe28Done not] whileTrue: [
        block280dbe28Step := block280dbe28PC.
        block280dbe28Step = 4 ifTrue: [
            block280dbe28Stack1 := nil.
            block280dbe28PC := 5.
        ].
        block280dbe28Step = 5 ifTrue: [
            block280dbe28Stack2 := block280dbe28Arg1.
            block280dbe28PC := 6.
        ].
        block280dbe28Step = 6 ifTrue: [
            (block280dbe28Stack2 == nil) ifTrue: [block280dbe28PC := 13] ifFalse: [block280dbe28PC := 10].
        ].
        block280dbe28Step = 10 ifTrue: [
            block280dbe28PC := 11.
        ].
        block280dbe28Step = 11 ifTrue: [
            block280dbe28Stack1 := block280dbe28Arg1.
            block280dbe28PC := 12.
        ].
        block280dbe28Step = 12 ifTrue: [
            block280dbe28Stack1 := (block280dbe28Stack1) freePixmap.
            block280dbe28PC := 13.
        ].
        block280dbe28Step = 13 ifTrue: [
            block280dbe28Result := block280dbe28Stack1.
            block280dbe28Done := true.
        ].
    ].
    block280dbe28Result
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) reinitializePixmaps.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

