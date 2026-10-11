"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012588; bytecode file offset 0x912098"
!AMLBaseObject class methodsFor: 'recovered'!
BlockDepth
    | recoveredValue0 |
    recoveredValue0 := BlockDepth.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200129b4; bytecode file offset 0x912098"
!AMLBaseObject class methodsFor: 'recovered'!
HaltOnErrors
    | recoveredValue0 |
    recoveredValue0 := HaltOnErrors.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200149ac; bytecode file offset 0x912098"
!AMLBaseObject class methodsFor: 'recovered'!
IFDataClasses
    | recoveredValue0 |
    recoveredValue0 := IFDataClasses.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20037cec; bytecode file offset 0x934768"
!AMLBaseObject class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005471c; bytecode file offset 0x951190"
!AMLBaseObject class methodsFor: 'recovered'!
BlockDepth: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    BlockDepth := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200547c4; bytecode file offset 0x951190"
!AMLBaseObject class methodsFor: 'recovered'!
IFDataClasses: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    IFDataClasses := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20054860; bytecode file offset 0x951190"
!AMLBaseObject class methodsFor: 'recovered'!
HaltOnErrors: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    HaltOnErrors := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2006f538; bytecode file offset 0x96bf7c"
!AMLBaseObject class methodsFor: 'recovered'!
keyWords
    | recoveredValue0 |
    recoveredValue0 := keyWords.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f8e8; bytecode file offset 0x96c1f4"
!AMLBaseObject class methodsFor: 'recovered'!
options
    | recoveredValue0 |
    recoveredValue0 := options.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c5bb0; bytecode file offset 0x9c25bc"
!AMLBaseObject class methodsFor: 'recovered'!
keyWords: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    keyWords := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5da8; bytecode file offset 0x9c2804"
!AMLBaseObject class methodsFor: 'recovered'!
options: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    options := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cb160; bytecode file offset 0x9c7b3c"
!AMLBaseObject class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) name: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2028cce0; bytecode file offset 0xb895c0"
!AMLBaseObject class methodsFor: 'recovered'!
initializeClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initializeClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) BlockDepth: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) HaltOnErrors: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) initializeKeyWords.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSubclasses.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [:block280e22d8Arg1 | 
    | block280e22d8Value0 block280e22d8Value1 |
    block280e22d8Value0 := block280e22d8Arg1.
    block280e22d8Value1 := (block280e22d8Value0) initializeKeyWords.
    block280e22d8Value1
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := ASAP2BaseObject.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) asap2BytesClasses.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) IFDataClasses: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2055a908; bytecode file offset 0xe57294"
!AMLBaseObject class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    (self) keyWords: (recoveredValue1).
    recoveredValue2 := (self) keyWords.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: ('/*') put: ('skipToCommentEnd:').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: ('{') put: ('beginOfBlock:').
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) at: ('}') put: ('endOfBlock:').
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) at: ('(') put: ('getCollectionBegin:').
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) at: (')') put: ('endOfStatement:').
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) at: (')*') put: ('endOfStatement:').
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) at: (')*;') put: ('endOfStatement:').
    recoveredValue10 := recoveredValue2.
    (recoveredValue10) at: ('*') put: ('endOfStatement:').
    recoveredValue11 := recoveredValue2.
    (recoveredValue11) at: ('*;') put: ('endOfStatement:').
    (recoveredValue2) at: (';') put: ('endOfStatement:').
    recoveredValue12 := (self) keyWords.
    recoveredValue13 := recoveredValue12.
    (recoveredValue13) at: ('char') put: ('getCharType:').
    recoveredValue14 := recoveredValue12.
    (recoveredValue14) at: ('int') put: ('getIntType:').
    recoveredValue15 := recoveredValue12.
    (recoveredValue15) at: ('long') put: ('getLongType:').
    recoveredValue16 := recoveredValue12.
    (recoveredValue16) at: ('uchar') put: ('getUCharType:').
    recoveredValue17 := recoveredValue12.
    (recoveredValue17) at: ('uint') put: ('getUIntType:').
    recoveredValue18 := recoveredValue12.
    (recoveredValue18) at: ('ulong') put: ('getULongType:').
    recoveredValue19 := recoveredValue12.
    (recoveredValue19) at: ('float') put: ('getFloatType:').
    recoveredValue20 := recoveredValue12.
    (recoveredValue20) at: ('double') put: ('getDoubleType:').
    recoveredValue21 := recoveredValue12.
    (recoveredValue21) at: ('struct') put: ('getStructType:').
    recoveredValue22 := recoveredValue12.
    (recoveredValue22) at: ('taggedstruct') put: ('getTaggedStructType:').
    recoveredValue23 := recoveredValue12.
    (recoveredValue23) at: ('taggedunion') put: ('getTaggedUnionType:').
    recoveredValue24 := recoveredValue12.
    (recoveredValue24) at: ('enum') put: ('getEnumType:').
    recoveredValue25 := recoveredValue12.
    (recoveredValue25) at: ('char;') put: ('getCharType:').
    recoveredValue26 := recoveredValue12.
    (recoveredValue26) at: ('int;') put: ('getIntType:').
    recoveredValue27 := recoveredValue12.
    (recoveredValue27) at: ('long;') put: ('getLongType:').
    recoveredValue28 := recoveredValue12.
    (recoveredValue28) at: ('uchar;') put: ('getUCharType:').
    recoveredValue29 := recoveredValue12.
    (recoveredValue29) at: ('uint;') put: ('getUIntType:').
    recoveredValue30 := recoveredValue12.
    (recoveredValue30) at: ('ulong;') put: ('getULongType:').
    recoveredValue31 := recoveredValue12.
    (recoveredValue31) at: ('float;') put: ('getFloatType:').
    recoveredValue32 := recoveredValue12.
    (recoveredValue32) at: ('double;') put: ('getDoubleType:').
    (recoveredValue12) at: ('block') put: ('getBlockDefinition:').
    ^self
! !

