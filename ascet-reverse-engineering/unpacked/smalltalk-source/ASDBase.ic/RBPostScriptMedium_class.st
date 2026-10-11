"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200ba80c; bytecode file offset 0x9b70cc"
!RBPostScriptMedium class methodsFor: 'recovered'!
FontMappingDictionary: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    FontMappingDictionary := recoveredValue0.
    recoveredValue1 := (self) new.
    (recoveredValue1) writeMappingsToXMLFile.
    ^self
! !

"ASDBase.ic method 0x200ca394; bytecode file offset 0x9c7020"
!RBPostScriptMedium class methodsFor: 'recovered'!
createForOsciFile: recoveredArg1 withSurroundingRectangle: recoveredArg2 diagramFrame: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) initForOsciPath: (recoveredValue1) withSurroundingRectangle: (recoveredValue2) diagramFrame: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2010221c; bytecode file offset 0x9feadc"
!RBPostScriptMedium class methodsFor: 'recovered'!
createForFile: recoveredArg1 withSurroundingRectangle: recoveredArg2 diagramFrame: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    (recoveredValue1) setSurroundingRectangle: (recoveredValue2) diagramFrame: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) initForPath: (recoveredValue5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20114fa4; bytecode file offset 0xa11864"
!RBPostScriptMedium class methodsFor: 'recovered'!
FontMappingDictionary
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := FontMappingDictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) readMappingsFromXMLFile.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := FontMappingDictionary.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20158878; bytecode file offset 0xa55134"
!RBPostScriptMedium class methodsFor: 'recovered'!
createForARCUSFile: recoveredArg1 withSurroundingRectangle: recoveredArg2 diagramFrame: recoveredArg3 scaleFactor: recoveredArg4 enlargeFontSize: recoveredArg5 enlargeFontMode: recoveredArg6 level: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := recoveredArg6.
    recoveredValue8 := recoveredArg7.
    (recoveredValue1) initARCUSForPath: (recoveredValue2) withSurroundingRectangle: (recoveredValue3) diagramFrame: (recoveredValue4) scaleFactor: (recoveredValue5) enlargeFontSize: (recoveredValue6) enlargeFontMode: (recoveredValue7) level: (recoveredValue8).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20179ad4; bytecode file offset 0xa7639c"
!RBPostScriptMedium class methodsFor: 'recovered'!
createForFile: recoveredArg1 withSurroundingRectangle: recoveredArg2 diagramFrame: recoveredArg3 scaleFactor: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ('Kk') == ('Call_67298').
    recoveredValue1 := (self) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    (recoveredValue2) setSurroundingRectangle: (recoveredValue3) diagramFrame: (recoveredValue4) scaleFactor: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue1) initForPath: (recoveredValue6).
    ^recoveredValue7
! !

