"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20060c8c; bytecode file offset 0x95d978"
!ASDNavigationObject methodsFor: 'recovered'!
isComponentObject
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) type.
    recoveredValue1 := (recoveredValue0) = ('component').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20060c9c; bytecode file offset 0x95d978"
!ASDNavigationObject methodsFor: 'recovered'!
isSpecificationObject
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) type.
    recoveredValue1 := (recoveredValue0) = ('specification').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20060d6c; bytecode file offset 0x95d978"
!ASDNavigationObject methodsFor: 'recovered'!
isWorkspaceNavigationObject
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) type.
    recoveredValue1 := (recoveredValue0) = ('workspace').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20060dec; bytecode file offset 0x95d978"
!ASDNavigationObject methodsFor: 'recovered'!
isMethodObject
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) type.
    recoveredValue1 := (recoveredValue0) = ('method').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20060f6c; bytecode file offset 0x95d978"
!ASDNavigationObject methodsFor: 'recovered'!
isDatabaseNavigationObject
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) type.
    recoveredValue1 := (recoveredValue0) = ('database').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200610ac; bytecode file offset 0x95d978"
!ASDNavigationObject methodsFor: 'recovered'!
isElementObject
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) type.
    recoveredValue1 := (recoveredValue0) = ('element').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20068d0c; bytecode file offset 0x965b90"
!ASDNavigationObject methodsFor: 'recovered'!
userInterface
    | recoveredValue0 |
    recoveredValue0 := userInterface.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069b00; bytecode file offset 0x966bdc"
!ASDNavigationObject methodsFor: 'recovered'!
object
    | recoveredValue0 |
    recoveredValue0 := object.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006af34; bytecode file offset 0x967a18"
!ASDNavigationObject methodsFor: 'recovered'!
parent
    | recoveredValue0 |
    recoveredValue0 := parent.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bdfcc; bytecode file offset 0x9bb178"
!ASDNavigationObject methodsFor: 'recovered'!
type: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    type := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200beae8; bytecode file offset 0x9bc0b4"
!ASDNavigationObject methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    value := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1520; bytecode file offset 0x9bdf14"
!ASDNavigationObject methodsFor: 'recovered'!
object: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    object := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c18dc; bytecode file offset 0x9beac8"
!ASDNavigationObject methodsFor: 'recovered'!
parent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parent := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f1c14; bytecode file offset 0x9ee6d0"
!ASDNavigationObject methodsFor: 'recovered'!
isGOIDObject
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('ASCETLINKS') = ('PROD105089').
    recoveredValue1 := (self) type.
    recoveredValue2 := (recoveredValue1) = ('graphicobject').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f1c2c; bytecode file offset 0x9ee6d0"
!ASDNavigationObject methodsFor: 'recovered'!
isXObject
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('ASCETLINKS') = ('PROD105089').
    recoveredValue1 := (self) type.
    recoveredValue2 := (recoveredValue1) = ('x').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f1c44; bytecode file offset 0x9ee6d0"
!ASDNavigationObject methodsFor: 'recovered'!
isGeneratorObject
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('ASCETLINKS') = ('PROD105089').
    recoveredValue1 := (self) type.
    recoveredValue2 := (recoveredValue1) = ('generator').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f1c5c; bytecode file offset 0x9ee6d0"
!ASDNavigationObject methodsFor: 'recovered'!
isTargetObject
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('ASCETLINKS') = ('PROD105089').
    recoveredValue1 := (self) type.
    recoveredValue2 := (recoveredValue1) = ('target').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f1c74; bytecode file offset 0x9ee6d0"
!ASDNavigationObject methodsFor: 'recovered'!
isCallObject
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('ASCETLINKS') = ('PROD105089').
    recoveredValue1 := (self) type.
    recoveredValue2 := (recoveredValue1) = ('callNo').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f1c8c; bytecode file offset 0x9ee6d0"
!ASDNavigationObject methodsFor: 'recovered'!
isImplementationObject
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('ASCETLINKS') = ('PROD105089').
    recoveredValue1 := (self) type.
    recoveredValue2 := (recoveredValue1) = ('implementation').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f1ca4; bytecode file offset 0x9ee6d0"
!ASDNavigationObject methodsFor: 'recovered'!
isOptionObject
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('ASCETLINKS') = ('PROD105089').
    recoveredValue1 := (self) type.
    recoveredValue2 := (recoveredValue1) = ('option').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f1cbc; bytecode file offset 0x9ee6d0"
!ASDNavigationObject methodsFor: 'recovered'!
isTableObject
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('ASCETLINKS') = ('PROD105089').
    recoveredValue1 := (self) type.
    recoveredValue2 := (recoveredValue1) = ('table').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f1cd4; bytecode file offset 0x9ee6d0"
!ASDNavigationObject methodsFor: 'recovered'!
isStartObject
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('ASCETLINKS') = ('PROD105089').
    recoveredValue1 := (self) type.
    recoveredValue2 := (recoveredValue1) = ('start').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f1cec; bytecode file offset 0x9ee6d0"
!ASDNavigationObject methodsFor: 'recovered'!
isHierarchyObject
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('ASCETLINKS') = ('PROD105089').
    recoveredValue1 := (self) type.
    recoveredValue2 := (recoveredValue1) = ('hierarchy').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f1d04; bytecode file offset 0x9ee6d0"
!ASDNavigationObject methodsFor: 'recovered'!
isTextObject
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('ASCETLINKS') = ('PROD105089').
    recoveredValue1 := (self) type.
    recoveredValue2 := (recoveredValue1) = ('text').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f1d1c; bytecode file offset 0x9ee6d0"
!ASDNavigationObject methodsFor: 'recovered'!
isEndObject
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('ASCETLINKS') = ('PROD105089').
    recoveredValue1 := (self) type.
    recoveredValue2 := (recoveredValue1) = ('end').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f1d34; bytecode file offset 0x9ee6d0"
!ASDNavigationObject methodsFor: 'recovered'!
isEntryObject
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('ASCETLINKS') = ('PROD105089').
    recoveredValue1 := (self) type.
    recoveredValue2 := (recoveredValue1) = ('entry').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f1d4c; bytecode file offset 0x9ee6d0"
!ASDNavigationObject methodsFor: 'recovered'!
isDefaultProjectObject
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('ASCETLINKS') = ('PROD105089').
    recoveredValue1 := (self) type.
    recoveredValue2 := (recoveredValue1) = ('defaultProject').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f1d64; bytecode file offset 0x9ee6d0"
!ASDNavigationObject methodsFor: 'recovered'!
isImpltypeObject
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('ASCETLINKS') = ('PROD105089').
    recoveredValue1 := (self) type.
    recoveredValue2 := (recoveredValue1) = ('impltype').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f1d7c; bytecode file offset 0x9ee6d0"
!ASDNavigationObject methodsFor: 'recovered'!
isDataObject
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('ASCETLINKS') = ('PROD105089').
    recoveredValue1 := (self) type.
    recoveredValue2 := (recoveredValue1) = ('data').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f1d94; bytecode file offset 0x9ee6d0"
!ASDNavigationObject methodsFor: 'recovered'!
isStatementBlock
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('ASCETLINKS') = ('PROD105089').
    recoveredValue1 := (self) type.
    recoveredValue2 := (recoveredValue1) = ('statementblock').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f1dac; bytecode file offset 0x9ee6d0"
!ASDNavigationObject methodsFor: 'recovered'!
isFormulaObject
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('ASCETLINKS') = ('PROD105089').
    recoveredValue1 := (self) type.
    recoveredValue2 := (recoveredValue1) = ('formula').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f1dc4; bytecode file offset 0x9ee6d0"
!ASDNavigationObject methodsFor: 'recovered'!
isYObject
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('ASCETLINKS') = ('PROD105089').
    recoveredValue1 := (self) type.
    recoveredValue2 := (recoveredValue1) = ('y').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f1ddc; bytecode file offset 0x9ee6d0"
!ASDNavigationObject methodsFor: 'recovered'!
isProjectObject
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('ASCETLINKS') = ('PROD105089').
    recoveredValue1 := (self) type.
    recoveredValue2 := (recoveredValue1) = ('project').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f1df4; bytecode file offset 0x9ee6d0"
!ASDNavigationObject methodsFor: 'recovered'!
isTaskObject
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('ASCETLINKS') = ('PROD105089').
    recoveredValue1 := (self) type.
    recoveredValue2 := (recoveredValue1) = ('task').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f1e0c; bytecode file offset 0x9ee6d0"
!ASDNavigationObject methodsFor: 'recovered'!
isCodeSourceObject
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('ASCETLINKS') = ('PROD105089').
    recoveredValue1 := (self) type.
    recoveredValue2 := (recoveredValue1) = ('codeSource').
    ^recoveredValue2
! !

"ASDBase.ic method 0x2010568c; bytecode file offset 0xa01f50"
!ASDNavigationObject methodsFor: 'recovered'!
type
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := type.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'undefined'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := type.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20105934; bytecode file offset 0xa021f8"
!ASDNavigationObject methodsFor: 'recovered'!
value
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := value.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := value.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012f780; bytecode file offset 0xa2c044"
!ASDNavigationObject methodsFor: 'recovered'!
initialize
    super initialize.
    type := 'undefined'.
    value := ''.
    ^self
! !

"ASDBase.ic method 0x201b5680; bytecode file offset 0xab1f40"
!ASDNavigationObject methodsFor: 'recovered'!
userInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) isRBUserInterface.
    recoveredBlock4Value1
].
    (self) runtimeAssert: (recoveredValue0) additionalInfo: ('Wrong type for a User Interface. Needs to be of type RBUserInterface').
    recoveredValue1 := recoveredArg1.
    userInterface := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20297778; bytecode file offset 0xb94054"
!ASDNavigationObject methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) name.
    (recoveredValue1) nextPutAll: (recoveredValue3).
    (recoveredValue0) cr.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := (self) type.
    recoveredValue7 := (recoveredValue6) printString.
    recoveredValue8 := ('- Type: ') , (recoveredValue7).
    (recoveredValue5) nextPutAll: (recoveredValue8).
    (recoveredValue4) cr.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := recoveredValue9.
    recoveredValue11 := (self) value.
    recoveredValue12 := (recoveredValue11) printString.
    recoveredValue13 := ('- Value: ') , (recoveredValue12).
    (recoveredValue10) nextPutAll: (recoveredValue13).
    (recoveredValue9) cr.
    ^self
! !

"ASDBase.ic method 0x2052291c; bytecode file offset 0xe1f228"
!ASDNavigationObject methodsFor: 'recovered'!
label
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'ASCETLINKS'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'PROD105089'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSpecificationObject.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := 'diagram='.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := value.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMethodObject.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := 'signature='.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := value.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) isGOIDObject.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := 'giod='.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := value.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCallObject.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 71].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := 'call='.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := value.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) isTableObject.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) isTextObject.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 179].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := value.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := value.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := '='.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := value.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 179].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := value.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := '='.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := '/'.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := value.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := '='.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := '='.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

